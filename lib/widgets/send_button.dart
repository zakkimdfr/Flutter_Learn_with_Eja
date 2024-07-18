import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback? onPressed;

  const SendButton({super.key, required this.isEnabled, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
            backgroundColor:
                isEnabled ? Color.fromARGB(255, 39, 92, 170) : Colors.grey,
            foregroundColor: isEnabled ? Colors.white : Colors.grey,
            minimumSize: const Size(double.infinity, 50)),
        child: const Text("Kirim Verifikasi"),
      ),
    );
  }
}
