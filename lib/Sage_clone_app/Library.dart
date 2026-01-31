import 'package:flutter/material.dart';
class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Image.asset('libraryy.JPG')),
    );
  }
}
