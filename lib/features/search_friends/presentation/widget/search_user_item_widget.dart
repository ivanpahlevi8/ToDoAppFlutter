import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/search_user_entity.dart';

/// One search result: avatar, username, a status line, and an action on the
/// right that depends on the relationship:
///
/// | State         | Status line         | Right side                 |
/// |---------------|---------------------|----------------------------|
/// | not connected | Not connected       | "Connect" filled button    |
/// | request sent  | Request sent        | "Requested" outlined badge |
/// | connected     | You are connected   | "Connected" soft chip      |
/// | yourself      | This is you         | "You" soft chip            |
class SearchUserItemWidget extends StatelessWidget {
  final SearchUserEntity searchUserEntity;
  final Function(String) sendUserFriendRequest;

  /// True once a connection request was sent to this user. The search API
  /// doesn't return this, so the screen keeps track of it.
  final bool isRequested;

  const SearchUserItemWidget({
    super.key,
    required this.searchUserEntity,
    required this.sendUserFriendRequest,
    this.isRequested = false,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    final String status = searchUserEntity.isSelf
        ? "This is you"
        : searchUserEntity.isConnected
            ? "You are connected"
            : isRequested
                ? "Request sent"
                : "Not connected";

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        color: customColor.dashboardCardColor!,
      ),
      child: Row(
        children: [
          // avatar
          CircleAvatar(
            radius: 22,
            backgroundColor: customColor.dashboardChartTrackColor!,
            child: Icon(
              Icons.person_outline,
              size: 22,
              color: customColor.dashboardTextSecondary!,
            ),
          ),
          const SizedBox(width: 12),

          // username + status
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchUserEntity.userModel.userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: customColor.dashboardTextPrimary!,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  status,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: customColor.dashboardTextSecondary!,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),

          // action
          _buildAction(customColor),
        ],
      ),
    );
  }

  Widget _buildAction(AppCustomColors customColor) {
    if (searchUserEntity.isSelf) {
      return _StatusChip(
        icon: Icons.person_outline,
        label: "You",
        customColor: customColor,
      );
    }

    if (searchUserEntity.isConnected) {
      return _StatusChip(
        icon: Icons.check,
        label: "Connected",
        customColor: customColor,
      );
    }

    if (isRequested) {
      // outlined, not tappable: the request is already on its way
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: customColor.dashboardStrongBorderColor!,
            width: 1.2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.schedule,
              size: 18,
              color: customColor.dashboardTextPrimary!,
            ),
            const SizedBox(width: 6),
            Text(
              "Requested",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: customColor.dashboardTextPrimary!,
              ),
            ),
          ],
        ),
      );
    }

    return FilledButton.icon(
      style: FilledButton.styleFrom(
        backgroundColor: customColor.dashboardAccent!,
        foregroundColor: customColor.dashboardOnAccent!,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      ),
      onPressed: () {
        // send request to user
        sendUserFriendRequest(searchUserEntity.userModel.userId);
      },
      icon: const Icon(Icons.person_add_alt_1_outlined, size: 18),
      label: const Text("Connect"),
    );
  }
}

/// Soft rounded chip used for "Connected" and "You".
class _StatusChip extends StatelessWidget {
  const _StatusChip({
    required this.icon,
    required this.label,
    required this.customColor,
  });

  final IconData icon;
  final String label;
  final AppCustomColors customColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: customColor.dashboardChartTrackColor!,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: customColor.dashboardTextPrimary!),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: customColor.dashboardTextPrimary!,
            ),
          ),
        ],
      ),
    );
  }
}
