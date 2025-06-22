import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vokasi_app/screens/profile_body_screen.dart';
import 'package:vokasi_app/providers/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: GoogleFonts.poppins(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color(0x95484848),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/detail_akun');
            },
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            icon: Icon(
              themeProvider.themeMode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              themeProvider.toggleTheme(
                themeProvider.themeMode != ThemeMode.dark,
              );
            },
          ),
        ],
        centerTitle: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        elevation: 0.0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const ProfileBodyScreen(),
    );
  }
}
