import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Akun',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo UNPAK
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
                  'Daftar Akun',
                  style: GoogleFonts.poppins(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25.0),

                // Email
                Text(
                  'Alamat Email',
                  style: GoogleFonts.poppins(fontSize: 14.0),
                ),
                const SizedBox(height: 8.0),
                inputField('Masukkan alamat email UNPAK'),

                const SizedBox(height: 20.0),

                // Kata Sandi
                Text('Kata Sandi', style: GoogleFonts.poppins(fontSize: 14.0)),
                const SizedBox(height: 8.0),
                inputField('Masukkan setidaknya 8 karakter', obscure: true),

                const SizedBox(height: 20.0),

                // Nomor HP
                Text('Nomor HP', style: GoogleFonts.poppins(fontSize: 14.0)),
                const SizedBox(height: 8.0),
                inputField(
                  'Masukkan nomor HP Anda',
                  keyboardType: TextInputType.phone,
                ),

                const SizedBox(height: 30.0),

                // Tombol Lanjut
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/detail_akun');
                    },
                    child: Text(
                      'Lanjut',
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffee8301),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 4,
                      shadowColor: Colors.orange.shade100,
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

  Widget inputField(
    String hint, {
    bool obscure = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return SizedBox(
      height: 40.0,
      child: TextField(
        obscureText: obscure,
        keyboardType: keyboardType,
        style: GoogleFonts.poppins(fontSize: 14.0),
        decoration: InputDecoration(
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
        ),
      ),
    );
  }
}
