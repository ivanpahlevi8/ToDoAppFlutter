import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_request_connection%20_byuser_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/remove_connection_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_request_byuser_item.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_request_byuser_item_shimmer.dart';

class GetRequestConnectionByuserScreen extends ConsumerStatefulWidget {
  const GetRequestConnectionByuserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GetRequestConnectionByuserScreenState();
}

class _GetRequestConnectionByuserScreenState
    extends ConsumerState<GetRequestConnectionByuserScreen> {
  @override
  void initState() {
    // initial state to get the request connection by user
    Future.microtask(() async {
      ref
          .read(getRequestConnectionByuserProviderProvider.notifier)
          .getRequestConnectionByUser();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final requestConnectionByUserProvider = ref.watch(
      getRequestConnectionByuserProviderProvider,
    );

    // listen on remove connection
    ref.listen<AsyncValue<ConnectionViewEntity?>>(
      removeConnectionProviderProvider,
      (previous, next) {
        next.onRemoveConnection(context, ref);
      },
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: requestConnectionByUserProvider.when(
              data: (data) {
                if (data != null) {
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      // get single data
                      final getSingleData = data[index];

                      // show data view
                      return ConnectionRequestByuserItem(
                        connectionViewEntity: getSingleData,
                        removeConnection: (connectionId) {
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
                    // show data view
                    return ConnectionRequestByuserItemShimmer();
                  },
                );
              },
              error: (error, stackTrace) {
                return Center(
                  child: Text("Error happen : ${error.toString()}"),
                );
              },
              loading: () {
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    // show data view
                    return ConnectionRequestByuserItemShimmer();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
