import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/customer/sign_in.dart';

class PasswordSetup extends StatefulWidget {
  const PasswordSetup({super.key});

  @override
  State<PasswordSetup> createState() => _PasswordSetupState();
}

class _PasswordSetupState extends State<PasswordSetup> {

  final TextEditingController _password = TextEditingController();
  final TextEditingController _cpassword = TextEditingController();

  void _submit(BuildContext context){
    print(_password.text == _cpassword.text);
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Credentials Setup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Ash Chandler'),
            TextField(
              readOnly: true,
              controller: TextEditingController(text: 'abcd'),
              ),
            const SizedBox(height: 20.0),
            const Text('Password'),
            TextField(
              obscureText: true,
              controller: _password,
              ),
            const SizedBox(height: 20.0),
            const Text('Confirm Password'),
            TextField(
              obscureText: true,
              controller: _cpassword,
              ),
            const SizedBox(height: 20.0),
            ElevatedButton(onPressed: () => _submit(context), child: const Text('Submit')),                                                
          ],
        ),
      ),      
    );
  }
}