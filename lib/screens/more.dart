import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justhabbo_fm/widgets/bottomInfoBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {

 _launchURL() async {
   const url = 'https://www.justhabbo.com';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }
 _launchFb() async {
   const url = 'https://www.facebook.com/justhabbo/?ref=bookmarks';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }
 _launchTwitter() async {
   const url = 'https://twitter.com/JustHabboCOM';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }
 _launchGl() async {
   const url = 'https://assistant.google.com/services/a/uid/0000000bd537f4dd?hl=en-US';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }
 _launchPaypal() async {
   const url = 'https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=socialmedia%40justhabbo.com&currency_code=USD&amount=8&source=url';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }
 _launchForum() async {
   const url = 'https://www.justhabboforum.com';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }


_getDetails(){
   if(Platform.isIOS){
    return Center(
      child: SizedBox(
        height: 50,
      )
    );
   }else{
     return Center(
         child: SizedBox(
           height: 50,
         )
     );
   }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00BBDC),
      appBar: AppBar(
        backgroundColor: Color(0xFF414141),
        centerTitle: true,
        title: Text(
          "More",
          style: GoogleFonts.lobster(
              textStyle: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
        ),
      ),
      body: Center(
        child: ListView(
          children: [

            _getDetails(),

            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Connect with us!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      child: GestureDetector(
                        onTap: (){
                          _launchFb();
                        },
                        child:
                            Icon(FontAwesomeIcons.facebook,size: 50,),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      child: GestureDetector(
                        onTap: (){
                          _launchTwitter();
                        },
                        child: Icon(FontAwesomeIcons.twitter,size: 50,),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      child: GestureDetector(
                        onTap: (){
                          _launchGl();
                        },
                        child: Icon(FontAwesomeIcons.google,size: 50,),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      child: GestureDetector(
                        onTap: (){
                          _launchURL();
                        },
                        child: Icon(FontAwesomeIcons.globe,size: 50,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'justHabbo Forum!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      child: GestureDetector(
                        onTap: (){
                          _launchForum();
                        },
                        child:
                        Icon(FontAwesomeIcons.rocketchat,size: 50,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomInfoBar(),
    );
  }
}

