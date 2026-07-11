import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/disconnect_connection_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_user_connections_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_request_byuser_item_shimmer.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_user_item.dart';

class GetConnectionUser extends ConsumerStatefulWidget {
  const GetConnectionUser({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GetConnectionUserState();
}

class _GetConnectionUserState extends ConsumerState<GetConnectionUser> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(getUserConnectionsProviderProvider.notifier).getUserConnection();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userConnection = ref.watch(getUserConnectionsProviderProvider);

    // listen on disconnect provider
    ref.listen<AsyncValue<ConnectionViewEntity?>>(
      disconnectConnectionProviderProvider,
      (previous, next) {
        next.onDisconnectConnection(context, ref);
      },
    );

    return Column(
      children: [
        Expanded(
          child: userConnection.when(
            data: (data) {
              if (data != null) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    ConnectionViewEntity getItem = data[index];

                    return ConnectionUserItem(
                      connectionViewEntity: getItem,
                      disconnectConnection: (connectionId) {
                        ref
                            .read(disconnectConnectionProviderProvider.notifier)
                            .disconnectConnection(connectionId: connectionId);
                      },
                    );
                  },
                );
              }

              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ConnectionRequestByuserItemShimmer();
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
                  return ConnectionRequestByuserItemShimmer();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
