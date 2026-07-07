import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';

class ConnectionRequestTouserItem extends StatelessWidget {
  final ConnectionViewEntity connectionViewEntity;
  final Function(int) onDeclineConnection;
  final Function(int) onAcceptConnection;
  const ConnectionRequestTouserItem({
    super.key,
    required this.connectionViewEntity,
    required this.onDeclineConnection,
    required this.onAcceptConnection,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            customColor.excellentStart!.withOpacity(0.8),
            customColor.excellentEnd!.withOpacity(0.8),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: Offset(2, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/person_icon.png"),
            radius: 50,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${connectionViewEntity.userModel.firstName} ${connectionViewEntity.userModel.lastName}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: customColor.textTitle,
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_user_sharp,
                      size: 18,
                      color: customColor.textTitle,
                    ),
                    SizedBox(width: 2),
                    Text(
                      connectionViewEntity.userModel.userName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.mail, size: 18, color: customColor.textTitle),
                    SizedBox(width: 2),
                    Text(
                      connectionViewEntity.userModel.email,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 18, color: customColor.textTitle),
                    SizedBox(width: 2),
                    Text(
                      connectionViewEntity.userModel.phoneNumber,
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
          SizedBox(width: 8),
          Column(
            children: [
              TextButton(
                onPressed: () {
                  onDeclineConnection(
                    connectionViewEntity.connectionEntity.connectionId,
                  );
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  backgroundColor: customColor.errorColor!,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.person_off,
                      size: 16,
                      color: customColor.textTitle,
                    ),
                    SizedBox(height: 1),
                    Text(
                      "decline",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4),
              TextButton(
                onPressed: () {
                  onAcceptConnection(
                    connectionViewEntity.connectionEntity.connectionId,
                  );
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  backgroundColor: customColor.successDialogBackground!,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.person_add_alt_sharp,
                      size: 16,
                      color: customColor.textTitle,
                    ),
                    SizedBox(height: 1),
                    Text(
                      "accept",
                      style: TextStyle(
                        fontSize: 10,
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
