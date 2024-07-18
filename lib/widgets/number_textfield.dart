import 'package:flutter/material.dart';
import 'package:learn_login_page/widgets/send_button.dart';

class NumberTextfield extends StatefulWidget {
  const NumberTextfield({super.key});

  @override
  _NumberTextFieldState createState() => _NumberTextFieldState();
}

class _NumberTextFieldState extends State<NumberTextfield> {
  final TextEditingController _controller = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_validateNumber);
  }

  void _validateNumber() {
    setState(() {
      _isButtonEnabled = _controller.text.length >= 9;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Sms Terkirim")));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: _controller,
            decoration: InputDecoration(
              prefixText: "+62 ",
              hintText: "contoh 8774454456",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SendButton(
            isEnabled: _isButtonEnabled,
            onPressed: _onButtonPressed,
          ),
        ],
      ),
    );
  }
}
