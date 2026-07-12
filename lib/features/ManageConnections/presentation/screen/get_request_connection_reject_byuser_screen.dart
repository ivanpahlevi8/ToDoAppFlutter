import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_request_connection_reject_byuser_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/remove_connection_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_reqeust_reject_byuser_item.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_request_reject_byuser_item_shimmer.dart';

class GetRequestConnectionRejectByuserScreen extends ConsumerStatefulWidget {
  const GetRequestConnectionRejectByuserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GetRequestConnectionRejectByuserScreenState();
}

class _GetRequestConnectionRejectByuserScreenState
    extends ConsumerState<GetRequestConnectionRejectByuserScreen> {
  @override
  void initState() {
    Future.microtask(() {
      ref
          .read(getRequestConnectionRejectByuserProviderProvider.notifier)
          .getAllConnectionRejectByUser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final getConnectionProvider = ref.watch(
      getRequestConnectionRejectByuserProviderProvider,
    );

    // listen on remove connection
    ref.listen<AsyncValue<ConnectionViewEntity?>>(
      removeConnectionProviderProvider,
      (prev, next) {
        next.onRemoveConnectionRejectByUser(context, ref);
      },
    );

    return Column(
      children: [
        Expanded(
          child: getConnectionProvider.when(
            data: (data) {
              if (data != null) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final getConnection = data[index];

                    // show connection view
                    return ConnectionReqeustRejectByuserItem(
                      connectionViewEntity: getConnection,
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
                  return ConnectionRequestRejectByuserItemShimmer();
                },
              );
            },
            error: (error, stackTrace) {
              return Center(
                child: Text(
                  "${error.toString()}, ${stackTrace.toString()}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.red,
                  ),
                ),
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ConnectionRequestRejectByuserItemShimmer();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
