import 'package:flutter/material.dart';
import 'package:learn_login_page/widgets/image_section.dart';
import 'package:learn_login_page/widgets/number_textfield.dart';
import 'package:learn_login_page/widgets/sms_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Masuk"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ImageSection(),
            SizedBox(height: 20),
            SmsText(),
            SizedBox(height: 20),
            NumberTextfield(),
          ],
        ),
      ),
    );
  }
}
