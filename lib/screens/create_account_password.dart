import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPassword extends StatefulWidget {
  const CreateAccountPassword({Key? key}) : super(key: key);

  @override
  _CreateAccountPasswordState createState() => _CreateAccountPasswordState();
}

class _CreateAccountPasswordState extends State<CreateAccountPassword> {
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
            Center(child: Text("Ucrush", style: GoogleFonts.poppins(fontSize:width/20, fontWeight: FontWeight.w500),)),
            SizedBox(height: height/10,),
            Center(child: Text("Create Password", style: GoogleFonts.poppins(fontSize:width/14, fontWeight: FontWeight.w700),)),
            SizedBox(height: height/40,),
            Container(
                width: width/1.2,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      fillColor: Colors.white70),
                )
            ),
            SizedBox(height: height/40,),
            Container(
                width: width/1.2,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Confirm Password",
                      fillColor: Colors.white70),
                )
            ),
            SizedBox(height: height/14,),
            Container(
              width: width/1.2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Next", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }
}
