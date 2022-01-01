import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchedScreen extends StatefulWidget {
  const MatchedScreen({Key? key}) : super(key: key);

  @override
  _MatchedScreenState createState() => _MatchedScreenState();
}

class _MatchedScreenState extends State<MatchedScreen> {
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
            SizedBox(height: height/5,),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: width/5),
                  child: Container(
                    width: width/3.8,
                    height: width/3.8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                      borderRadius: BorderRadius.all(Radius.circular(width)),
                    ),
                  ),
                ),
                Container(
                  width: width/3.8,
                  height: width/3.8,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                    borderRadius: BorderRadius.all(Radius.circular(width)),
                  ),
                ),
              ],
            ),
            SizedBox(height: height/15,),
            Padding(
              padding: EdgeInsets.only(right: width/2),
              child: Text("It's a", style: GoogleFonts.poppins(fontSize:width/14, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: EdgeInsets.only(right: width/7),
              child: Text("match!", style: GoogleFonts.poppins(fontSize:width/6.2, fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: height/15,),
            Container(
              width: width/2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Make it work!", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
            SizedBox(height: height/25,),
            Container(
              width: width/2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black, Colors.black]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Nope", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }
}
