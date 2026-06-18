import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/widget/search_user_bar_widget.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/widget/search_user_item_widget.dart';

class SearchUserScreen extends StatefulWidget {
  const SearchUserScreen({super.key});

  @override
  State<SearchUserScreen> createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  final TextEditingController inputSearchUsername = TextEditingController(
    text: "",
  );

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return SearchUserItemWidget(
                userModel: UserModel(
                  firstName: "Test",
                  lastName: "Name",
                  createdAt: "",
                  userId: "",
                  userName: "test_name",
                  email: "test@test.com",
                  phoneNumber: "847580",
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
