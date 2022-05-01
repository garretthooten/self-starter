import 'package:flutter/material.dart';
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

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen();
  final profileRep = ProfileRepository.instance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
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
                'Edit Profile Details',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: profileRep.firstNamesController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter First Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                controller: profileRep.lastNamesController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Last Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (true /* replace this with validation criteria */) {
                    String tfname = profileRep.firstNamesController.text;
                    String tlname = profileRep.lastNamesController.text;
                    print('Button clicked! Name is: $tfname $tlname');
                    ProfileRepository.instance().fname =
                        profileRep.firstNamesController.text;
                    ProfileRepository.instance().lname =
                        profileRep.lastNamesController.text;
                    String nfname = ProfileRepository.instance().fname;
                    String nlname = ProfileRepository.instance().lname;
                    print('[1] Button clicked! Name is: $nfname $nlname');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChangeNotifierProvider(
                          create: (_) => ProfileRepository.instance(),
                          child: Profile(tfname, tlname));
                    }));
                  }

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text('First Name: ' +
                            profileRep.firstNamesController.text +
                            '\n' +
                            'Last Name: ' +
                            profileRep.lastNamesController.text),
                      );
                    },
                  );
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
