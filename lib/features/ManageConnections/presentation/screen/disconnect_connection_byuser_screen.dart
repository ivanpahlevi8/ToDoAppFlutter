import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_connection_disconnect_byuser_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/remove_connection_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/disconnect_connection_byuser_item.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/disconnect_connection_byuser_item_shimmer.dart';

class DisconnectConnectionByuserScreen extends ConsumerStatefulWidget {
  const DisconnectConnectionByuserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DisconnectConnectionByuserScreenState();
}

class _DisconnectConnectionByuserScreenState
    extends ConsumerState<DisconnectConnectionByuserScreen> {
  @override
  void initState() {
    Future.microtask(() {
      ref
          .read(getConnectionDisconnectByuserProviderProvider.notifier)
          .getConnectionDisconnectByUser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final disconnectConnectionByUser = ref.watch(
      getConnectionDisconnectByuserProviderProvider,
    );

    ref.listen<AsyncValue<ConnectionViewEntity?>>(
      removeConnectionProviderProvider,
      (prev, next) {
        next.onRemoveConnectionDisconnectByUser(context, ref);
      },
    );

    return Column(
      children: [
        Expanded(
          child: disconnectConnectionByUser.when(
            data: (data) {
              if (data != null) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    ConnectionViewEntity getData = data[index];

                    return DisconnectConnectionByuserItem(
                      onRemoveConnection: (connectionId) {
                        ref
                            .read(removeConnectionProviderProvider.notifier)
                            .removeConnection(connectionId: connectionId);
                      },
                      connectionViewEntity: getData,
                    );
                  },
                );
              }

              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return DisconnectConnectionByuserItemShimmer();
                },
              );
            },
            error: (error, stackTrace) {
              return Center(
                child: Text(
                  "${error.toString()}, ${stackTrace.toString()}",
                  style: TextStyle(
                    fontSize: 16,
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
                  return DisconnectConnectionByuserItemShimmer();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
