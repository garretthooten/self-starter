import 'package:flutter/material.dart';
import 'package:flutter_firstproject/profile/profile_repository.dart';
import 'package:flutter_firstproject/screens/create_post.dart';
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

class Timeline extends StatelessWidget {
  Timeline(this._fname, this._lname, this._posts);
  String _fname = 'Test';
  String _lname = 'User';

  List<LocalPost> _posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeline'),
      ),
      body: ListView(
        children: _posts
            .map((post) => GestureDetector(
                child:
                    Text(post.fname + ' ' + post.lname + '\n' + post.content)))
            .toList(),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          child: Text('Create Post'),
          onPressed: () {
            if (true /* replace this with validation criteria */) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChangeNotifierProvider(
                    create: (_) => ProfileRepository.instance(),
                    child: CreatePostScreen(_fname, _lname, _posts));
              }));
            }
          },
        ),
      ),
    );
  }
}
