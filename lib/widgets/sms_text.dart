import 'package:flutter/material.dart';

class SmsText extends StatelessWidget {
  const SmsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Masukkan Nomor Ponsel',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text('Kode verifikasi akan dikirimkan melalui SMS.'),
        SizedBox(height: 0),
        Text("Pastikan nomor aktif.")
      ],
    );
  }
}
