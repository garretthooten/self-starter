import 'package:flutter/material.dart';
import 'login.dart';
import 'profile.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self-Starter'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
                },
            ),
            ElevatedButton(
              child: const Text('Register(goes to profile screen for now)'),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );},
            ),
          ]
        ),
      ),
    );
  }
}