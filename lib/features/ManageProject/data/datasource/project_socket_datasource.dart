import 'dart:async';

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

abstract interface class ProjectSocketDatasource {
  // function to connect connect to socket server
  void connectToServer({required int projectId});

  // function to get stream data
  Stream<dynamic> getRawStream();

  // function to send data
  void sendData(String data);
}

class ProjectSocketDatasourceImpl implements ProjectSocketDatasource {
  WebSocketChannel? channel;
  Timer? _heartbeatTimer;
  StreamSubscription? _socketSubscription;

  final StreamController<dynamic> _streamController =
      StreamController<dynamic>.broadcast();

  @override
  Stream<dynamic> getRawStream() {
    return _streamController.stream;
  }

  @override
  void connectToServer({required int projectId}) {
    // Clean up previous connection if reconnecting
    _cleanupConnection();

    channel = IOWebSocketChannel.connect(
      Uri.parse("wss://ivan-portofolio.xyz/socket/ws?projectId=$projectId"),
      pingInterval: const Duration(seconds: 5),
    );

    print("Success connect to the socket server");

    // 3. Listen to the single-subscription socket and forward payloads to the broadcast stream
    _socketSubscription = channel!.stream.listen(
      (message) {
        print("Incoming ${message}");
        _streamController.add(message);
      },
      onError: (error) {
        print('Connection failed via stream error: $error');
        _streamController.addError(error);
        _cleanupConnection();
      },
      onDone: () {
        print('Connection closed cleanly or stream finished');
        _cleanupConnection();
      },
    );
  }

  @override
  void sendData(String data) {
    channel?.sink.add(data);
  }

  void _cleanupConnection() {
    _heartbeatTimer?.cancel();
    _socketSubscription?.cancel();
    channel?.sink.close();
    channel = null;
  }
}
