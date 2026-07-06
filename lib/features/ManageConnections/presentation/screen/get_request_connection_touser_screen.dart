import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/decline_connection_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_request_connection_touser_provider.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_request_byuser_item_shimmer.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/widget/connection_request_touser_item.dart';

class GetRequestConnectionTouserScreen extends ConsumerStatefulWidget {
  const GetRequestConnectionTouserScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GetRequestConnectionTouserScreenState();
}

class _GetRequestConnectionTouserScreenState
    extends ConsumerState<GetRequestConnectionTouserScreen> {
  @override
  void initState() {
    // init data to get conenction request to login user
    Future.microtask(() async {
      ref
          .read(getRequestConnectionTouserProviderProvider.notifier)
          .getConnectionToUser();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final requestConnectionToUserProvider = ref.watch(
      getRequestConnectionTouserProviderProvider,
    );

    // listen do decline connection
    ref.listen<AsyncValue<ConnectionViewEntity?>>(
      declineConnectionProviderProvider,
      (previous, next) {
        next.onDeclineConnection(context, ref);
      },
    );

    return Column(
      children: [
        Expanded(
          child: requestConnectionToUserProvider.when(
            data: (data) {
              if (data != null) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    // get single data
                    ConnectionViewEntity getData = data[index];

                    // show data
                    return ConnectionRequestTouserItem(
                      connectionViewEntity: getData,
                      onDeclineConnection: (connectionId) {
                        ref
                            .read(declineConnectionProviderProvider.notifier)
                            .declineConnection(connectionId: connectionId);
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
                    fontSize: 17,
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
