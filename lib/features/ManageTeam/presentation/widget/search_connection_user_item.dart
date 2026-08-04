import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

class SearchConnectionUserItem extends StatelessWidget {
  final Function(String) onSelectUser;
  final UserModel userModel;
  const SearchConnectionUserItem({
    super.key,
    required this.userModel,
    required this.onSelectUser,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [
            customColor.timeLineCardColor1!,
            customColor.timeLineCardColor2!,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 10.0,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/person_icon.png", width: 50, height: 50),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${userModel.firstName} ${userModel.lastName}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: customColor.textTitle!,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email, size: 18, color: customColor.textTitle!),
                    SizedBox(width: 4),
                    Text(
                      userModel.email,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle!,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 18, color: customColor.textTitle!),
                    SizedBox(width: 4),
                    Text(
                      userModel.phoneNumber,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle!,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // showb info button
              TextButton(
                onPressed: () {
                  // assign user to team
                  onSelectUser(userModel.userId);
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  backgroundColor: customColor.excellentEnd!.withOpacity(0.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_add,
                      size: 18,
                      color: customColor.textTitle!,
                    ),
                    SizedBox(height: 1),
                    Text(
                      "add",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
