import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_connection_disconnect_byother_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/remove_connection_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/disconnect_connection_byother_item.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/disconnect_connection_byother_item_shimmer.dart';

class DisconnectConnectionByotherScreen extends ConsumerStatefulWidget {
  const DisconnectConnectionByotherScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DisconnectConnectionByotherScreenState();
}

class _DisconnectConnectionByotherScreenState
    extends ConsumerState<DisconnectConnectionByotherScreen> {
  @override
  void initState() {
    // init get the connections
    Future.microtask(() {
      ref
          .read(getConnectionDisconnectByotherProviderProvider.notifier)
          .getDisconnectConnectionByUser();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final getConnectionDisconnectByOtherProvider = ref.watch(
      getConnectionDisconnectByotherProviderProvider,
    );

    // listen on connection disconnect by other
    ref.listen<AsyncValue<ConnectionViewEntity?>>(
      removeConnectionProviderProvider,
      (prev, next) {
        next.onRemoveConnectionDisconnectByOther(context, ref);
      },
    );

    return Column(
      children: [
        Expanded(
          child: getConnectionDisconnectByOtherProvider.when(
            data: (data) {
              if (data != null) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    ConnectionViewEntity getSingleData = data[index];

                    return DisconnectConnectionByotherItem(
                      connectionViewEntity: getSingleData,
                      onRemoveConnection: (connectionId) {
                        ref
                            .read(removeConnectionProviderProvider.notifier)
                            .removeConnection(connectionId: connectionId);
                      },
                    );
                  },
                );
              }

              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return DisconnectConnectionByotherItemShimmer();
                },
              );
            },
            error: (error, stackTrace) {
              return Center(
                child: Text(
                  "${error.toString()}, ${stackTrace.toString()}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.red,
                  ),
                ),
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return DisconnectConnectionByotherItemShimmer();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
