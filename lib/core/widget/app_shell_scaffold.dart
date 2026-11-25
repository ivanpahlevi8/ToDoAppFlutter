import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/app_drawer.dart';

/// Scaffold for the main pages reached from the drawer (Home, Performance,
/// Search people, Connections): same app bar style, the menu button and the
/// [AppDrawer].
///
/// The drawer opens these pages with `go`, which replaces the page instead of
/// stacking it, so there's nothing to go back to. On pages other than Home
/// the system back button therefore closes the drawer if it's open, and
/// otherwise returns to Home instead of closing the app.
class AppShellScaffold extends StatefulWidget {
  const AppShellScaffold({
    super.key,
    required this.title,
    required this.destination,
    required this.body,
    this.actions,
  });

  final String title;

  /// Which drawer item is this page; it's drawn as selected.
  final AppDrawerDestination destination;

  final Widget body;
  final List<Widget>? actions;

  @override
  State<AppShellScaffold> createState() => _AppShellScaffoldState();
}

class _AppShellScaffoldState extends State<AppShellScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool get _isHome => widget.destination == AppDrawerDestination.home;

  void _handleBack(bool didPop, Object? result) {
    if (didPop) return;

    final ScaffoldState? scaffold = _scaffoldKey.currentState;
    if (scaffold != null && scaffold.isDrawerOpen) {
      scaffold.closeDrawer();
    } else {
      context.go("/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    final Widget scaffold = Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: customColor.dashboardTextPrimary!,
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: widget.actions,
      ),
      drawer: AppDrawer(selected: widget.destination),
      body: widget.body,
    );

    // Home is the root page, so back behaves normally there.
    if (_isHome) return scaffold;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: _handleBack,
      child: scaffold,
    );
  }
}
