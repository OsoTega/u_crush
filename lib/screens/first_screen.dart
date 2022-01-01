import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
            Container(
              width: width/3,
              height: height/7.2,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(width/3.2), topRight: Radius.circular(width/3.2), bottomRight: Radius.circular(width/3.2)),
              ),
            ),
            SizedBox(height: height/10,),
            Center(child: Text("Take Control!!", style: GoogleFonts.poppins(fontSize:width/14, fontWeight: FontWeight.w700),)),
            SizedBox(height: height/40,),
            Center(child: Container( width: width/1.2,child: Text("Ucrush would help you take control over your relationships", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize:width/24, color: Colors.grey, fontWeight: FontWeight.w400),))),
            SizedBox(height: height/8,),
            Container(
              width: width/1.2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Login", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
            SizedBox(height: height/34,),
            Container(
              width: width/1.2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Sign Up", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }
}
