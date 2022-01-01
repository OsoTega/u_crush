import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddProfilePicture extends StatefulWidget {
  const AddProfilePicture({Key? key}) : super(key: key);

  @override
  _AddProfilePictureState createState() => _AddProfilePictureState();
}

class _AddProfilePictureState extends State<AddProfilePicture> {
  File? imageFile;
  bool isSelected = false;
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
            Center(child: Text("Add a Profile Photo", style: GoogleFonts.poppins(fontSize:width/14, fontWeight: FontWeight.w700),)),
            SizedBox(height: height/40,),
            InkWell(
              child: Container(
                width: width/2,
                height: width/2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                  borderRadius: BorderRadius.all(Radius.circular(width/2)),
                  image: DecorationImage(
                    image: FileImage(imageFile!),
                    fit: BoxFit.cover
                  )
                ),
                child: isSelected == true ? Container() : Center(child: Icon(Icons.add, size: width/8, color: Colors.white,),),
              ),
              onTap: () {
                _getFromGallery();
              },
            ),
            SizedBox(height: height/14,),
            Container(
              width: width/1.2,
              height: height/14,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                borderRadius: BorderRadius.all(Radius.circular(width)),
              ),
              child: Center(child: Text("Create Account", style: GoogleFonts.poppins(fontSize:width/22, color: Colors.white, fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }

  _getFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imageFile = File(image.path);
        isSelected = true;
      });
    }
  }
}
