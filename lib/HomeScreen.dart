import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _value ? Colors.black87 : Colors.white70,
      appBar: AppBar(
        backgroundColor: _value ? Colors.black26 : Colors.blue,
        centerTitle: true,
        title: Text(
          'Flutter Switch',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _value ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Switch(
          value: _value,
          onChanged: (inp) {
            setState(() {
              _value = inp;
            });
          },
        ),
      ),
    );
  }
}
