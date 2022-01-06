import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key, this.stdID, this.stdName}) : super(key: key);
  final String? stdID;
  final String? stdName;

  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Student ID: ' + widget.stdID!),
          Text('Stduent Name: ' + widget.stdName!),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('To 2nd Page')),
        ],
      )),
    );
  }
}
