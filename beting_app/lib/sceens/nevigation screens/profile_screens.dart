import 'package:beting_app/helper/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  AppBar(
              title: Text(
                "playerZone",
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
              backgroundColor: Style.backgroundColor,
              actions: [
                IconButton(onPressed: () {},
                 icon: const Icon(FontAwesomeIcons.bell))
              ]),
      backgroundColor: Style.backgroundColor3,
      body: Column(
        children: [
          Container(
            height:height*0.4 ,
            width: width*0.9,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
