import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/main_view.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await setupServiceLocator();

  runApp(
    // 4. Wrap your entire app in a ProviderScope so Riverpod works
    const ProviderScope(child: MainView()),
  );
}
