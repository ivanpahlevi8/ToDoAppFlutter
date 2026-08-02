import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/user_team_member_entity.dart';

class UserMemberTeamWidget extends StatelessWidget {
  final UserTeamMemberEntity userMember;
  final bool isTeamLead;
  final String loginUserId;
  final Function(String) onRemoveUser;
  final Function onLeaveUser;
  final Function(String) onUserDetail;
  const UserMemberTeamWidget({
    super.key,
    required this.userMember,
    required this.isTeamLead,
    required this.loginUserId,
    required this.onRemoveUser,
    required this.onLeaveUser,
    required this.onUserDetail,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  customColor.averageStart!.withOpacity(0.5),
                  customColor.averageEnd!.withOpacity(0.5),
                ],
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/person_icon.png",
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${userMember.firstName} ${userMember.lastName}",
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
                          Icon(
                            Icons.email,
                            size: 18,
                            color: customColor.textTitle!,
                          ),
                          SizedBox(width: 4),
                          Text(
                            userMember.email,
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
                    if (!(loginUserId == userMember.userId))
                      // showb info button
                      TextButton(
                        onPressed: () {
                          onUserDetail(userMember.userId);
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 12,
                          ),
                          backgroundColor: customColor.averageStart!
                              .withOpacity(0.6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info,
                              size: 18,
                              color: customColor.textTitle!,
                            ),
                            SizedBox(height: 1),
                            Text(
                              "info",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                color: customColor.textTitle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    // check condition if its team leader or not
                    if (isTeamLead) SizedBox(width: 4),
                    if (isTeamLead)
                      // show remove button
                      TextButton(
                        onPressed: () {
                          onRemoveUser(userMember.userId);
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 8,
                          ),
                          backgroundColor: customColor.errorColor!.withOpacity(
                            0.6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_remove,
                              size: 18,
                              fontWeight: FontWeight.w900,
                            ),
                            SizedBox(height: 1),
                            Text(
                              "remove",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                color: customColor.textTitle,
                              ),
                            ),
                          ],
                        ),
                      ),

                    // check if user is login user
                    if (loginUserId == userMember.userId)
                      // show leave groupd button
                      TextButton(
                        onPressed: () {
                          onLeaveUser();
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 12,
                          ),
                          backgroundColor: customColor.errorColor!.withOpacity(
                            0.6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.exit_to_app_sharp,
                              size: 18,
                              fontWeight: FontWeight.w900,
                            ),
                            SizedBox(height: 3),
                            Text(
                              "leave",
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
          ),
        ),
      ],
    );
  }
}
