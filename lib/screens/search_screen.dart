import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                    CircleAvatar(
                    ),
                    SizedBox(width: width/20,)
                  ],
                ),
              ],
            ),
            SizedBox(height: height/38,),
            Container(
              width: width/1.2,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Search",
                    fillColor: Colors.white70),
              )
            ),
            SizedBox(height: height/20,),
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
