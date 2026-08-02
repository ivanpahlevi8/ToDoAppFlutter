import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/search_connection_user_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/search_connection_user_item.dart';

class AddTeamMemberDialog extends ConsumerWidget {
  const AddTeamMemberDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    TextEditingController searchFriendName = TextEditingController(text: "");

    final searchUserConnection = ref.watch(
      searchConnectionUserProviderProvider,
    );

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
      ),
      backgroundColor: customColor.colorPalette1DialogBackground,
      insetPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      shadowColor: Colors.grey.withOpacity(0.6),
      child: Container(
        height: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add New Member",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: customColor.textTitle!,
                ),
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: searchFriendName,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (value) {
                        if (value != "") {
                          ref
                              .read(
                                searchConnectionUserProviderProvider.notifier,
                              )
                              .searchConnectionUserProvider(name: value);
                        }
                      },
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                        labelText: "Role Name",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1.3,
                          ),
                        ),
                        // Border state when the user is actively typing in the field
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                        // Border state when the field validator fails
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Expanded(
                child: searchUserConnection.when(
                  data: (data) {
                    if (data != null) {
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          UserModel getUserModel = data[index];

                          return SearchConnectionUserItem(
                            userModel: getUserModel,
                          );
                        },
                      );
                    }
                    return SizedBox();
                  },
                  error: (error, stackTrace) {
                    return Center(
                      child: Text(
                        "${error.toString()}, ${stackTrace.toString()}",
                      ),
                    );
                  },
                  loading: () {
                    return SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
