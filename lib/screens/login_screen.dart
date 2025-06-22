import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Center(
                child: Image.asset(
                  'assets/logo_vokasi-orange.png',
                  width: 80,
                  height: 80,
                ),
              ),

              const SizedBox(height: 30.0),

              // Judul
              Text(
                'Masuk',
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff484848),
                ),
              ),

              const SizedBox(height: 25.0),

              // Email Field
              Text('Alamat Email', style: GoogleFonts.poppins(fontSize: 14.0)),
              const SizedBox(height: 8.0),
              _buildInputField('Masukkan alamat email UNPAK'),

              const SizedBox(height: 20.0),

              // Password Field
              Text('Kata Sandi', style: GoogleFonts.poppins(fontSize: 14.0)),
              const SizedBox(height: 8.0),
              _buildInputField('Masukkan kata sandi Anda', isPassword: true),

              const SizedBox(height: 30.0),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi langsung tanpa validasi
                    Navigator.pushReplacementNamed(context, '/profile');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffee8301),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              // Lupa Password
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/password_recovery');
                  },
                  child: Text(
                    'Lupa kata sandi?',
                    style: GoogleFonts.poppins(
                      fontSize: 13.0,
                      color: const Color(0xffee8301),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String hint, {bool isPassword = false}) {
    return SizedBox(
      height: 40.0,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.poppins(fontSize: 14.0),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Color(0xffee8301)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Color(0xffee8301)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Color(0xffee8301)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
