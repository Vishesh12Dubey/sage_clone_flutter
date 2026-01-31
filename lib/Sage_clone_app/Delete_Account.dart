import 'package:flutter/material.dart';
class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Account'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('deleteaccount.JPG'),
    );
  }
}
