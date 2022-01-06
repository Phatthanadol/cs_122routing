import 'package:flutter/material.dart';
import 'package:cs_122routing/pages/thirdpage.dart';
import 'package:flutter/services.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _stdid = TextEditingController();

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
          const Text('Input Your Information'),
          form(),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('To 1st Page')),
          submitbutton(),
        ],
      )),
    );
  }

  Widget form() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please, Input Your Name";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _stdid,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please, Input Your Student ID";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: 'Student ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
          )
        ],
      ),
    );
  }

  Widget submitbutton() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Thirdpage(
                  stdID: _stdid.text,
                  stdName: _name.text,
                ),
              ));
        },
        child: const Text('Send Info to 3rd page'));
  }
}
