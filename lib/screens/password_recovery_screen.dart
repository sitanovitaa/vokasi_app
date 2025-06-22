import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

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
              Center(
                child: Image.asset(
                  'assets/logo_vokasi-orange.png',
                  width: 80,
                  height: 80,
                ),
              ),

              const SizedBox(height: 30.0),

              Text(
                'Pemulihan Kata Sandi',
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25.0),

              Text('Alamat Email', style: GoogleFonts.poppins(fontSize: 14.0)),
              const SizedBox(height: 8.0),

              SizedBox(
                height: 40.0,
                child: TextField(
                  style: GoogleFonts.poppins(fontSize: 14.0),
                  decoration: _inputDecoration('Masukkan alamat email Anda'),
                ),
              ),

              const SizedBox(height: 10.0),

              Text(
                'Kata sandi baru akan dikirimkan ke alamat email Anda',
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                ),
              ),

              const SizedBox(height: 30.0),
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffee8301),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  child: const Text('Kirim'),
                ),
              ),

              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk mendeklarasikan input decoration biar tidak duplikat
  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: GoogleFonts.poppins(fontSize: 14.0),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xffee8301)),
        borderRadius: BorderRadius.circular(30.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xffee8301)),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
