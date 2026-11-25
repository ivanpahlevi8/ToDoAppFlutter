import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/connection_summary_controller.dart';

/// Every place the drawer can take you. The page that shows the drawer
/// passes its own value, so that item is drawn as selected.
enum AppDrawerDestination {
  home,
  teams,
  performance,
  searchPeople,
  connections,
  settings,
}

/// The app's side menu, shared by every page that has a drawer.
///
/// Layout (top to bottom): app name, profile card, Home, "Work" section,
/// "People" section, then Settings and the version pinned to the bottom.
class AppDrawer extends ConsumerStatefulWidget {
  const AppDrawer({super.key, required this.selected});

  final AppDrawerDestination selected;

  @override
  ConsumerState<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends ConsumerState<AppDrawer> {
  @override
  void initState() {
    super.initState();

    // The Connections badge needs the connection summary. The dashboard
    // already loads it; on other pages it may not be loaded yet, so load it
    // when the drawer opens.
    Future.microtask(() {
      final current = ref.read(connectionSummaryControllerProvider);
      if (!current.isLoading && current.valueOrNull == null) {
        ref
            .read(connectionSummaryControllerProvider.notifier)
            .getConnectionSummary();
      }
    });
  }

  /// Closes the drawer, then opens [route] unless it's the current page.
  ///
  /// Main pages (Home, Performance, Search people, Connections) use `go`,
  /// which replaces the current page, so switching between them doesn't pile
  /// up a back stack. Pages with their own back button (Teams) use `push`.
  void _open(
    AppDrawerDestination destination,
    String route, {
    bool push = false,
  }) {
    Scaffold.of(context).closeDrawer();

    if (destination == widget.selected) return;

    push ? context.push(route) : context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // incoming connection requests waiting for the user
    final int pendingRequests = ref
            .watch(connectionSummaryControllerProvider)
            .valueOrNull
            ?.numberOfRequestedConnection ??
        0;

    return Drawer(
      backgroundColor: customColor.dashboardDrawerColor!,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  "To Do App",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: customColor.dashboardTextPrimary!,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _ProfileCard(
                customColor: customColor,
                onTap: () => Scaffold.of(context).closeDrawer(),
              ),
              const SizedBox(height: 12),
              Divider(height: 1, color: customColor.dashboardDividerColor!),
              const SizedBox(height: 12),

              // scrollable middle part, so small screens don't overflow
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _DrawerItem(
                      icon: Icons.home_outlined,
                      label: "Home",
                      isSelected:
                          widget.selected == AppDrawerDestination.home,
                      onTap: () => _open(AppDrawerDestination.home, "/home"),
                    ),
                    _SectionLabel("Work", customColor: customColor),
                    _DrawerItem(
                      icon: Icons.groups_outlined,
                      label: "Your teams",
                      isSelected:
                          widget.selected == AppDrawerDestination.teams,
                      onTap: () => _open(
                        AppDrawerDestination.teams,
                        "/get-all-teams",
                        push: true,
                      ),
                    ),
                    _DrawerItem(
                      icon: Icons.show_chart,
                      label: "Performance",
                      isSelected:
                          widget.selected == AppDrawerDestination.performance,
                      onTap: () => _open(
                        AppDrawerDestination.performance,
                        "/performance",
                      ),
                    ),
                    _SectionLabel("People", customColor: customColor),
                    _DrawerItem(
                      icon: Icons.person_search_outlined,
                      label: "Search people",
                      isSelected:
                          widget.selected == AppDrawerDestination.searchPeople,
                      onTap: () => _open(
                        AppDrawerDestination.searchPeople,
                        "/search-user",
                      ),
                    ),
                    _DrawerItem(
                      icon: Icons.link,
                      label: "Connections",
                      badge: pendingRequests,
                      isSelected:
                          widget.selected == AppDrawerDestination.connections,
                      onTap: () => _open(
                        AppDrawerDestination.connections,
                        "/connection-byuser",
                      ),
                    ),
                  ],
                ),
              ),

              // pinned to the bottom
              Divider(height: 1, color: customColor.dashboardDividerColor!),
              const SizedBox(height: 8),
              _DrawerItem(
                icon: Icons.settings_outlined,
                label: "Settings",
                isSelected: widget.selected == AppDrawerDestination.settings,
                // no settings page yet: just close the drawer
                onTap: () => Scaffold.of(context).closeDrawer(),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  "Version 1.0.0.0 by ivan",
                  style: TextStyle(
                    fontSize: 12,
                    color: customColor.dashboardTextSecondary!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Pieces of the drawer
// ---------------------------------------------------------------------------

/// Avatar + name + "View profile" card at the top.
class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.customColor, required this.onTap});

  final AppCustomColors customColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final BorderRadius radius = BorderRadius.circular(14);

    return Material(
      color: customColor.dashboardCardColor!,
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: customColor.dashboardAccentSoft!,
                child: Icon(
                  Icons.person_outline,
                  size: 20,
                  color: customColor.dashboardAccentText!,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // There's no "current user" provider yet, so this is a
                    // fixed label. Swap it for the user's name once one exists.
                    Text(
                      "My account",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: customColor.dashboardTextPrimary!,
                      ),
                    ),
                    Text(
                      "View profile",
                      style: TextStyle(
                        fontSize: 12,
                        color: customColor.dashboardTextSecondary!,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: customColor.dashboardTextSecondary!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Small grey heading such as "Work" or "People".
class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text, {required this.customColor});

  final String text;
  final AppCustomColors customColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 14, bottom: 6),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: customColor.dashboardTextSecondary!,
        ),
      ),
    );
  }
}

/// One menu row: icon, label and an optional amber count badge.
/// The selected row gets a soft accent background and accent text.
class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.badge = 0,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  /// Shown as an amber pill on the right when greater than 0.
  final int badge;

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;
    final BorderRadius radius = BorderRadius.circular(12);
    final Color foreground = isSelected
        ? customColor.dashboardAccentText!
        : customColor.dashboardTextPrimary!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Material(
        color: isSelected
            ? customColor.dashboardAccentSoft!
            : Colors.transparent,
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
            child: Row(
              children: [
                Icon(icon, size: 20, color: foreground),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected ? FontWeight.w800 : FontWeight.w600,
                      color: foreground,
                    ),
                  ),
                ),
                if (badge > 0)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    decoration: BoxDecoration(
                      color: customColor.dashboardAmber!,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      badge > 99 ? "99+" : "$badge",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: customColor.dashboardOnAmber!,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
