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
import '../models/LocalPost.dart';
import '../profile/profile_repository.dart';
import '../style.dart';
import 'timeline.dart';
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

class CreatePostScreen extends StatelessWidget {
  CreatePostScreen(this._fname, this._lname, this._posts);
  String _fname;
  String _lname;
  List<LocalPost> _posts;
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
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
                'Create Post',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: contentController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter content',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (true /* replace this with validation criteria */) {
                    String pcontent = contentController.text;
                    print('Button clicked! content is: $pcontent');
                    LocalPost newPost = LocalPost(_fname, _lname, pcontent);
                    _posts.add(newPost);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChangeNotifierProvider(
                          create: (_) => ProfileRepository.instance(),
                          child: Timeline(_fname, _lname, _posts));
                    }));
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
