
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:reyna_solution_app/src/core/constants/app_colors.dart';
import 'package:reyna_solution_app/src/presentation/modules/splash/view/splash_screen.dart';
import 'package:reyna_solution_app/src/utils/utils_export.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // Lock the device orientation to portrait mode only
//   if (Platform.isAndroid || Platform.isIOS) {
//     await SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//   }
//
//   // //Firebase initializeApp
//   // await Firebase.initializeApp();
//   try {
//     await Firebase.initializeApp();
//     debugPrint('✅ Firebase initialized');
//   } catch (e) {
//     debugPrint('❌ Firebase init failed: $e');
//   }
//
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => ThemeProvider(),
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, _) {
//         return MaterialApp(
//           title: 'Reyna Solutions',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData.light(useMaterial3: true),
//           darkTheme: ThemeData.dark(useMaterial3: true),
//           themeMode: themeProvider.isDarkMode ? ThemeMode.light : ThemeMode.dark,
//           home: const SplashScreen(),
//         );
//       },
//     );
//   }
// }

/*
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Reyna Connect',
              theme: ThemeData.light(useMaterial3: true),
              darkTheme: ThemeData.dark(useMaterial3: true),
              themeMode: themeProvider.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              home: const SplashScreen(), // Firebase-safe to use here now
            );
          });
        }

        if (snapshot.hasError) {
          return const SizedBox.shrink();
        }

        // Show loading while waiting for Firebase
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: AppColors.appPrimaryColor,
              ),
            ),
          ),
        );
      },
    );
  }
}*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  DateTime? _lastPausedTime;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _lastPausedTime = DateTime.now();
    } else if (state == AppLifecycleState.resumed) {
      final now = DateTime.now();
      if (_lastPausedTime != null && now.difference(_lastPausedTime!).inMinutes >= 3) {
        _navigatorKey.currentState?.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const SplashScreen()),
              (route) => false,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Consumer<ThemeProvider>(
            builder: (context, themeProvider, _) {
              return MaterialApp(
                navigatorKey: _navigatorKey,
                debugShowCheckedModeBanner: false,
                title: 'Reyna Connect',
                theme: ThemeData.dark(useMaterial3: true),
                darkTheme: ThemeData.dark(useMaterial3: true),
                themeMode: themeProvider.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                home: const SplashScreen(),
              );
            },
          );
        }

        if (snapshot.hasError) {
          return const SizedBox.shrink();
        }

        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: AppColors.appPrimaryColor),
            ),
          ),
        );
      },
    );
  }
}
