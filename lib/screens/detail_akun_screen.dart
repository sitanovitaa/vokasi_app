import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAkunScreen extends StatelessWidget {
  const DetailAkunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail Akun',
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
                  'Detail Akun',
                  style: GoogleFonts.poppins(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20.0),

                // Nama
                formLabel('Nama'),
                inputField('Masukkan nama lengkap Anda'),

                const SizedBox(height: 20.0),

                // Nama Panggilan
                formLabel('Nama Panggilan'),
                inputField('Masukkan Nama Panggilan'),

                const SizedBox(height: 20.0),

                // NPM
                formLabel('NPM'),
                inputField(
                  'Masukkan NPM Anda',
                  keyboardType: TextInputType.number,
                ),

                const SizedBox(height: 20.0),

                // Program Studi
                formLabel('Pilih Program Studi'),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffee8301)),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(border: InputBorder.none),
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    value: null,
                    hint: Text(
                      'Program Studi',
                      style: GoogleFonts.poppins(fontSize: 14.0),
                    ),
                    items:
                        [
                          'Teknik Komputer',
                          'Manajamen Perpajakan',
                          'Manajemen Informatika',
                          'Akuntansi',
                          'Manajemen Keuangan & Perbankan',
                        ].map((prodi) {
                          return DropdownMenuItem<String>(
                            value: prodi,
                            child: Text(prodi),
                          );
                        }).toList(),
                    onChanged: (value) {},
                  ),
                ),

                const SizedBox(height: 20.0),

                // Alamat
                formLabel('Alamat rumah/kost'),
                TextField(
                  maxLines: 3,
                  style: GoogleFonts.poppins(fontSize: 14.0),
                  decoration: InputDecoration(
                    hintText: 'Masukkan alamat rumah/kost Anda',
                    hintStyle: GoogleFonts.poppins(fontSize: 14.0),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 12.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffee8301)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffee8301)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),

                const SizedBox(height: 30.0),

                // Tombol Daftar
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/profile');
                    },
                    child: Text(
                      'Daftar',
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

                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget formLabel(String text) {
    return Text(text, style: GoogleFonts.poppins(fontSize: 14.0));
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
