import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 32,
                  left: 8,
                  right: 12,
                  bottom: 32,
                ),
                height: 210,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      offset: Offset(2, 5),
                      blurRadius: 16,
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [
                      customColor.averageStart!,
                      customColor.averageEnd!,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (context.canPop()) {
                              context.pop();
                            }
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SearchUserBarWidget(
                        textEditing: inputSearchUsername,
                        onSearch: (username) {
                          ref
                              .read(searchUserProviderProvider.notifier)
                              .searchUserByUsername(username: username);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: searchFriendRiverpod.when(
            data: (data) {
              if (data == null) {
                return Center(
                  child: Text(
                    "No Data Found",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: customColor.textTitle,
                    ),
                  ),
                );
              }

              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return SearchUserItemWidget(
                    userModel: data,
                    sendUserFriendRequest: (userId) {
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
