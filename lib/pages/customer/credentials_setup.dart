import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/customer/validate_credentials.dart';

class CredentialSetup extends StatefulWidget {

  final String phone;

  const CredentialSetup({super.key, required this.phone});

  @override
  State<CredentialSetup> createState() => _CredentialSetupState();
}

class _CredentialSetupState extends State<CredentialSetup> {

  void _submit(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ValidateCredentials()));
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
              controller: TextEditingController(text: widget.phone),
              ),
            const SizedBox(height: 20.0),
            const Text('Partner: Monzo'),
            const SizedBox(height: 20.0),                            
            const Text('IBAN No:'),            
            TextField(
              controller: TextEditingController(text: widget.phone),
              ),
            const SizedBox(height: 20.0),
            const Text('( OR )'),        
            const SizedBox(height: 20.0),            
            const Text('Banking Routing No:'),
            TextField(
              controller: TextEditingController(text: widget.phone),
              ),
            const SizedBox(height: 20.0),
            const Text('Account No:'),
            TextField(
              controller: TextEditingController(text: widget.phone),
              ),
            const SizedBox(height: 20.0), 
            ElevatedButton(onPressed: () => _submit(context), child: const Text('Submit')),                                   
          ],
        ),
      ),      
    );
  }
}