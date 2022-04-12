import 'package:flutter/material.dart';
import 'package:flutter_firstproject/profile/profile_repository.dart';
import 'package:flutter_firstproject/screens/otp_screen.dart';
import 'package:provider/provider.dart';
import 'nav_drawer.dart';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'profile.dart';
import '../models/ModelProvider.dart';
import '../profile/profile_repository.dart';
import '../style.dart';
import '../utils/shared_prefs.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
// Amplify Flutter Packages
import 'package:amplify_flutter/amplify.dart';
import 'package:provider/provider.dart';

import '../amplifyconfiguration.dart';

import '../login/login_repository.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final loginRep = LoginRepository.instance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create an Account'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: NavDrawer(),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Text(
                'Enter your email and create a username and password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: loginRep.usernameController,
                //controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                controller: loginRep.passwordController,
                //controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                controller: loginRep.emailController,
                //controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (true /* replace this with validation criteria */) {
                    loginRep.register(context).then((bool? value) {
                      if (loginRep.isSignUpComplete) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OtpScreen(
                              username: loginRep.usernameController.text.trim(),
                              password: loginRep.passwordController.text.trim(),
                              email: loginRep.emailController.text.trim());
                        }));
                      } else {}
                    });
                  }

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text('Username: ' +
                            usernameController.text +
                            '\n' +
                            'Password: ' +
                            passwordController.text),
                      );
                    },
                  );
                },
                label: const Text('Submit'),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
