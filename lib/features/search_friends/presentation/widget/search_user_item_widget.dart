import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

class SearchUserItemWidget extends StatelessWidget {
  final UserModel userModel;
  const SearchUserItemWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          colors: [
            customColor.excellentStart!.withOpacity(0.5),
            customColor.excellentEnd!.withOpacity(0.5),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/person_icon.png"),
            radius: 45,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userModel.userName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle!,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 22, color: customColor.textTitle),
                    SizedBox(width: 4),
                    Text(
                      "${userModel.firstName} ${userModel.lastName}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email, size: 22, color: customColor.textTitle),
                    SizedBox(width: 4),
                    Text(
                      userModel.email,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 22, color: customColor.textTitle),
                    SizedBox(width: 4),
                    Text(
                      userModel.phoneNumber,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          FilledButton(
            style: FilledButton.styleFrom(
              splashFactory: InkSparkle.splashFactory,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              backgroundColor: customColor.excellentEnd,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ), // 3. Fixes the BorderRadius geometry bug
              ),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.person_add_alt,
              size: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
