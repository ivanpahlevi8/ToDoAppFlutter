class BaseException implements Exception {
  final String? message;
  final String? userMessage;
  final StackTrace? stackTrace;
  final Object? error;

  BaseException({
    required this.message,
    this.userMessage,
    this.stackTrace,
    this.error,
  });

  @override
  int get hashCode => message.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BaseException && other.message == message;
  }

  @override
  String toString() => userMessage ?? 'Unknown Error';
}

// create exception override for network
class NetworkException extends BaseException {
  NetworkException({
    super.message,
    super.userMessage,
    super.stackTrace,
    super.error,
  });
}

// create exception overide for storage
class StorageException extends BaseException {
  StorageException({
    super.message,
    super.userMessage,
    super.stackTrace,
    super.error,
  });
}
