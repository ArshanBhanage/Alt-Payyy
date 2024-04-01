import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/customer/qr_scanner.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  void _submit(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Scanner()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Dashboard'),
      ),      
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const  Text('Dear Ash Chandler'),
            const SizedBox(height: 20.0),
            const  Text('Welcome to Alt-Pay'),
            const SizedBox(height: 20.0),
            const  Text('Our partner in United Kingdom is \nMonzo \nwww.monzo.com'),
            const SizedBox(height: 20.0),
            ElevatedButton(onPressed: () => _submit(context), child: const Text('Scan QR & Pay')),                        
          ],
        ),
      ),
    );
  }
}