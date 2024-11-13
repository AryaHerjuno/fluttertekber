import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 148, 11, 1),
      ),
      backgroundColor: const Color.fromARGB(255, 191, 14, 2),
      body: Center(
         child: Padding(
          padding: const EdgeInsets.all(16.0),
          
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Foto diri
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('foto.jpg'),
            ),
            const SizedBox(height: 20),
            
            // Nama Lengkap
            const Text(
              'Aryatama Attariq H Putra',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 8),

            // NRP
            Text(
              'NRP: 5026211151', 
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Fun Fact
            const Text(
              'Fun Fact: Makanan Favorit saya adalah Sate Ayam',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Tombol Aksi
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Terima kasih telah mengunjungi halaman About!'))
                );
              },
              child: Text('Terima Kasih!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 148, 11, 1), 
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    )
  );
  }
}
