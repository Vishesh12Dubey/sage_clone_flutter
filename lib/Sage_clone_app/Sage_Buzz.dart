import 'package:flutter/material.dart';
class SageBuzz extends StatefulWidget {
  const SageBuzz({super.key});

  @override
  State<SageBuzz> createState() => _SageBuzzState();
}

class _SageBuzzState extends State<SageBuzz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sage Buzz'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: Image.asset('sagebuzz.JPG'),
    );
  }
}
