import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vokasi_app/screens/detail_akun_screen.dart';
import 'package:vokasi_app/screens/login_screen.dart';
import 'package:vokasi_app/screens/password_recovery_screen.dart';
import 'package:vokasi_app/screens/profile_screen.dart';
import 'package:vokasi_app/screens/register_screen.dart';
import 'package:vokasi_app/screens/splash_screen.dart';
import 'package:vokasi_app/screens/welcome_screen.dart';
import 'package:vokasi_app/providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Vokasi App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light().copyWith(
              // Light theme customization
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xff484848),
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              // Dark theme customization
              scaffoldBackgroundColor: const Color(0xFF121212),
              appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFF1E1E1E),
                foregroundColor: Colors.white,
              ),
              cardTheme: CardTheme(
                color: const Color(0xFF1E1E1E),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            themeMode: themeProvider.themeMode,
            initialRoute: '/splash',
            routes: {
              '/splash': (context) => const SplashScreen(),
              '/welcome': (context) => const WelcomeScreen(),
              '/login': (context) => const LoginScreen(),
              '/register': (context) => const RegisterScreen(),
              '/detail_akun': (context) => const DetailAkunScreen(),
              '/profile': (context) => const ProfileScreen(),
              '/password_recovery': (context) => const PasswordRecoveryScreen(),
            },
          );
        },
      ),
    );
  }
}
