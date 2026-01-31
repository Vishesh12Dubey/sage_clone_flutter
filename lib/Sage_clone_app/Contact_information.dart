import 'package:flutter/material.dart';
class ContactInformation extends StatefulWidget {
  const ContactInformation({super.key});

  @override
  State<ContactInformation> createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Information'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('contactinfo.JPG'),
    );
  }
}
