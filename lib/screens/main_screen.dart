import 'dart:math';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_reveal/pull_to_reveal.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:u_crush/animation_transformer/transformers_build.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<FriendCard> feed = [];
    feed.add(FriendCard(height: height, width: width, name: 'Tega',));
    feed.add(FriendCard(height: height, width: width, name: 'Boy'));
    feed.add(FriendCard(height: height, width: width, name: 'Jack'));
    feed.add(FriendCard(height: height, width: width, name: 'Sarah'));
    feed.add(FriendCard(height: height, width: width, name: 'Joy'));
    feed.add(FriendCard(height: height, width: width, name: 'Sam'));
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            SizedBox(height: height/15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: width/10),
                  child: Text("Ucrush", style: GoogleFonts.lato(fontSize:width/24, fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svgs/search.svg", width: 20,),
                    SizedBox(width: width/14,),
                    CircleAvatar(
                    ),
                    SizedBox(width: width/20,)
                  ],
                ),
              ],
            ),
            Flexible(
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: width/14),
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Center(child: Icon(Icons.add, size: width/18, color: Colors.white,)),
                      ),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                      CrushList(width: width, height: height,),
                    ]
                ),
            ),
            Container(
              width: width/1.34,
              height: height/1.98,
              child: Center(
                child: PageView(
                  children: feed,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index){

                  },
                ),
              ),
            ),
            Action(width: width, height: height,)
          ],
        ),
      ),
    );
  }
}

class CrushList extends StatefulWidget {
  final width;
  final height;
  const CrushList({Key? key, this.width, this.height}) : super(key: key);

  @override
  _CrushListState createState() => _CrushListState();
}

class _CrushListState extends State<CrushList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.height/22, left: widget.width/20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: widget.width/5.8,
                height: widget.height/13.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
                ),
              ),
              Container(
                width: widget.width/6.4,
                height: widget.height/14.7,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
                    border: Border.all(color: Colors.white, width: 4)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FriendCard extends StatefulWidget {
  final width;
  final height;
  final String name;
  const FriendCard({Key? key, this.width, this.height, required this.name}) : super(key: key);

  @override
  _FriendCardState createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.height/40, right: 10),
      child: Container(
        child: Container(
          width: widget.width/1.34,
          height: widget.height/2,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(44))
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: widget.height/40),
                child: BlurryContainer(
                  width: widget.width/1.7,
                  height: widget.height/10,
                  bgColor: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  child: Center(child: Text(widget.name, style: GoogleFonts.poppins(fontSize:widget.width/24, fontWeight: FontWeight.bold, color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Action extends StatefulWidget {
  final width;
  final height;
  const Action({Key? key, this.width, this.height}) : super(key: key);

  @override
  _ActionState createState() => _ActionState();
}

class _ActionState extends State<Action> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.height/10),
      child: Container(
        width: widget.width/5,
        height: widget.width/5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.width/4)),
          color: Colors.pink.shade100
        ),
        child: Center(
          child: SvgPicture.asset("assets/svgs/heart-svgrepo-com (2).svg", color: Colors.red.shade500, width: widget.width/12,)
        ),
      ),
    );
  }
}


