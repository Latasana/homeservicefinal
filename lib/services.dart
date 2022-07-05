import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            iconSize: 30, onPressed: (() {}), icon: Icon(Icons.menu)),
        title: const Text("SERVICES"),
      ),
    );
  }
}
