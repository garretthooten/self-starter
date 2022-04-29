import 'package:flutter/material.dart';
import 'package:flutter_firstproject/screens/profile.dart';
import 'login.dart';
import 'register.dart';
import 'nav_drawer.dart';
import 'otp_screen.dart';
import '../profile/profile_repository.dart';
import 'edit_profile_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileRepository profileRep = ProfileRepository.instance();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self-Starter'),
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
        child: Column(children: <Widget>[
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
            child: const Text('Register'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
          ),
          /*
          ElevatedButton(
            child: const Text('OTP'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OtpScreen(
                          username: 'username',
                          password: 'password',
                          email: 'thisisnotarealmail@ghootenmail.com')));
            },
          ),
          ElevatedButton(
            child: const Text('Edit Profile'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EditProfileScreen(profileRep.userId)));
            },
          ),
          ElevatedButton(
            child: const Text('Profile'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ElevatedButton(
            child: const Text('Sign Out'),
            onPressed: () {
              profileRep.signOut();
            },
          ),
          */
        ]),
      ),
    );
  }
}
