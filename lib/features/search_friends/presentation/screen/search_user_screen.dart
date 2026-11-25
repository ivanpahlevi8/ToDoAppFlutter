import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/send_user_connection_field_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/async_ui_extension.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/controller/search_user_provider.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/controller/send_user_connection_provider.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/widget/search_user_bar_widget.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/widget/search_user_item_shimmer_widget.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/widget/search_user_item_widget.dart';

class SearchUserScreen extends ConsumerStatefulWidget {
  const SearchUserScreen({super.key});

  @override
  ConsumerState<SearchUserScreen> createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends ConsumerState<SearchUserScreen> {
  final TextEditingController inputSearchUsername = TextEditingController(
    text: "",
  );

  // Users we sent a connection request to while on this screen. The search
  // API only says "connected" or not, so we remember requests here to show
  // the "Requested" state.
  final Set<String> _requestedUserIds = {};

  // the user whose request is being sent right now
  String? _pendingUserId;

  @override
  void dispose() {
    inputSearchUsername.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // watch search friend riverpod
    final searchFriendRiverpod = ref.watch(searchUserProviderProvider);

    // listen to send connection
    ref.listen<AsyncValue<String?>>(sendUserConnectionProviderProvider, (
      previous,
      next,
    ) {
      next.onSendUserConnection(context, ref);

      // request sent: mark that user as requested
      if (next.hasValue && next.value != null && _pendingUserId != null) {
        setState(() {
          _requestedUserIds.add(_pendingUserId!);
          _pendingUserId = null;
        });
      }
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // search bar
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: SearchUserBarWidget(
            textEditing: inputSearchUsername,
            onSearch: (username) {
              ref
                  .read(searchUserProviderProvider.notifier)
                  .searchUserByUsername(username: username);
            },
          ),
        ),

        Expanded(
          child: searchFriendRiverpod.when(
            data: (data) {
              if (data == null) {
                return SizedBox();
              }

              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return SearchUserItemWidget(
                    searchUserEntity: data,
                    isRequested: _requestedUserIds
                        .contains(data.userModel.userId),
                    sendUserFriendRequest: (userId) {
                      _pendingUserId = userId;

                      // send user friend request
                      ref
                          .read(sendUserConnectionProviderProvider.notifier)
                          .sendUserConnection(
                            sendUserConnection: SendUserConnectionFieldEntity(
                              userConnectionId: userId,
                              userOwnerId: "",
                            ),
                          );
                    },
                  );
                },
              );
            },
            error: (error, stackTrace) {
              return Center(
                child: Text(
                  error.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: customColor.errorColor,
                  ),
                ),
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SearchUserItemShimmerWidget();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
