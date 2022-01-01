import 'package:flutter/material.dart';
import 'package:u_crush/screens/add_a_crush_details.dart';
import 'package:u_crush/screens/add_profile_picture.dart';
import 'package:u_crush/screens/create_account_confirm_email.dart';
import 'package:u_crush/screens/create_account_confirm_number.dart';
import 'package:u_crush/screens/create_account_email_address.dart';
import 'package:u_crush/screens/create_account_password.dart';
import 'package:u_crush/screens/create_account_phone.dart';
import 'package:u_crush/screens/create_account_social_media.dart';
import 'package:u_crush/screens/create_account_username.dart';
import 'package:u_crush/screens/login_screen.dart';
import 'package:u_crush/screens/main_screen.dart';
import 'package:u_crush/screens/matched_screen.dart';
import 'package:u_crush/screens/search_screen.dart';
import 'package:u_crush/screens/settings.dart';

void main() {
  runApp(const Ucrush());
}

class Ucrush extends StatelessWidget {
  const Ucrush({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'U-crush',
      home: AddProfilePicture()
    );
  }
}
