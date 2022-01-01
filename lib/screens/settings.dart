import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            SizedBox(height: height/10,),
            Padding(
              padding: EdgeInsets.only(right: width/5),
              child: Text("Edit your account", style: GoogleFonts.poppins(fontSize:width/14, fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: height/24,),
            Container(
              width: width/1.2,
              height: height/1.8,
              child: ListView(
                padding: EdgeInsets.only(bottom: height/20),
                children: <Widget>[
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "UserName",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Password",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Phone Number",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Email",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Facebook Address",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Instagram Address",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "WhatsApp Number with country code",
                            fillColor: Colors.white70),
                      )
                  ),
                  SizedBox(height: height/34,),
                  Container(
                      width: width/1.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Twitter Address",
                            fillColor: Colors.white70),
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: height/24,),
            Container(
              width: width/2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Update", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
            SizedBox(height: height/34,),
            Container(
              width: width/2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Back", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }
}
