import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vokasi_app/widgets/logo_vokasi.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            LogoVokasi(isColored: true),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffee8301),
                foregroundColor: Colors.white,
                minimumSize: Size(240.0, 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 14.0),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text('Register'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xeeff8301),
                minimumSize: Size(240.0, 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 14.0),
                side: const BorderSide(color: const Color(0xeeff8301)),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
