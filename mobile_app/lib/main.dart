import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/themes/app_theme.dart';
import 'routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ClecloApp());
}

class ClecloApp extends StatelessWidget {
  const ClecloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cleclo',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}