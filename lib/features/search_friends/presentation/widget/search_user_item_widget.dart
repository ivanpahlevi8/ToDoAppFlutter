import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/search_user_entity.dart';

class SearchUserItemWidget extends StatelessWidget {
  final SearchUserEntity searchUserEntity;
  final Function(String) sendUserFriendRequest;
  const SearchUserItemWidget({
    super.key,
    required this.searchUserEntity,
    required this.sendUserFriendRequest,
  });

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
                  searchUserEntity.userModel.userName,
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
                    Expanded(
                      child: Text(
                        "${searchUserEntity.userModel.firstName} ${searchUserEntity.userModel.lastName}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
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
                    Expanded(
                      child: Text(
                        searchUserEntity.userModel.email,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
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
                    Expanded(
                      child: Text(
                        searchUserEntity.userModel.phoneNumber,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          if (!searchUserEntity.isSelf && !searchUserEntity.isConnected)
            FilledButton(
              style: FilledButton.styleFrom(
                splashFactory: InkSparkle.splashFactory,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 8,
                ),
                backgroundColor: customColor.excellentEnd,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                // send request to user
                sendUserFriendRequest(searchUserEntity.userModel.userId);
              },
              child: const Icon(
                Icons.person_add_alt,
                size: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          if (searchUserEntity.isConnected)
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: customColor.excellentEnd!.withOpacity(0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    offset: Offset(0.5, 1),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.connect_without_contact_outlined,
                    size: 24,
                    color: customColor.textTitle,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Connected",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      color: customColor.textTitle,
                    ),
                  ),
                ],
              ),
            ),
          if (searchUserEntity.isSelf)
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: customColor.averageEnd!.withOpacity(0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    offset: Offset(0.5, 1),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(Icons.person, size: 24, color: customColor.textTitle),
                  SizedBox(height: 2),
                  Text(
                    "Yourself",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      color: customColor.textTitle,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
