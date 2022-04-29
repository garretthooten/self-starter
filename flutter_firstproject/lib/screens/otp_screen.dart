import 'package:flutter/material.dart';
import 'package:flutter_firstproject/profile/edit_profile_screen.dart';
import 'package:flutter_firstproject/profile/profile_repository.dart';
import 'package:provider/provider.dart';
import 'nav_drawer.dart';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'profile.dart';
import 'register.dart';
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

class OtpScreen extends StatelessWidget {
  OtpScreen(
      {required this.username, required this.password, required this.email});
  final String username;
  final String password;
  final String email;
  final loginRep = LoginRepository.instance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Verification Code'),
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
                'Check your email for a verification code',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: loginRep.codeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Verification Code',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (true /* replace this with validation criteria */) {
                    loginRep
                        .confirmUser(username, password, email)
                        .then((bool value) {
                      if (value) {
                        loginRep
                            .retrieveCurrentUser()
                            .then((AuthUser authUser) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ChangeNotifierProvider(
                                create: (_) => ProfileRepository.instance(),
                                child: EditProfileScreen(authUser.userId));
                          }));
                        });
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Profile validated!'));
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Failed to validate!'));
                            });
                      }
                    });
                  }
                },
                label: const Text('Submit'),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
