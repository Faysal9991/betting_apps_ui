import 'package:beting_app/helper/style.dart';
import 'package:beting_app/widget/beting_card.dart';
import 'package:beting_app/widget/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                "playerZone",
                style: GoogleFonts.aBeeZee(color: Colors.white),
              ),
              backgroundColor: Style.backgroundColor,
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.bell))
              ]),
          backgroundColor: Style.backgroundColor,
          body: Padding(
            padding: EdgeInsets.only(left: width * 0.055, top: height * 0.02),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                       
                        borderRadius: BorderRadius.circular(5)),
                    child: LoginWidget(
                      h: height * 0.02,
                      w: width * 0.9,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(radius: height*0.065,
                              backgroundColor: const Color(0xff54BA4F),

                                child: CircleAvatar(
                                  radius: height*0.059,
                                  backgroundColor: const Color(0xffCEDBD2),
                                  child: Padding(
                               padding:  EdgeInsets.only(top: height*0.036),
                               child: Column(
                                 
                                 children: [
                                   Text("Total win",style: GoogleFonts.lato(fontSize: 14,color: Colors.black,),),
                                   Text("000 BDT",style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.green),)
                                 ],
                               ),
                                  ),),
                                  ),
                                  SizedBox(width: width*0.01,),
                              CircleAvatar(radius: height*0.065,
                                                      backgroundColor: Colors.red,
                              
                                                        child: CircleAvatar(
                                                          radius: height*0.059,
                                                          backgroundColor: const Color(0xffFBECEC),
                                                          child: Padding(
                               padding:  EdgeInsets.only(top: height*0.036),
                               child: Column(
                                 
                                 children: [
                                   Text("Total Losse",style: GoogleFonts.lato(fontSize: 14,color: Colors.black),),
                                   Text("000 BDT",style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color:Colors.red),)
                                 ],
                               ),
                                                          ),),
                                                          ),
                                                          SizedBox(width: width*0.04,),
                              CircleAvatar(radius: height*0.09,
                              backgroundColor: Colors.teal,

                                child: CircleAvatar(
                                  radius: height*0.059,
                                  backgroundColor: const Color(0xffCEDBD2),
                                  child: Padding(
                                    padding:  EdgeInsets.only(top: height*0.036),
                                    child: Column(
                                      
                                      children: [
                                        Text("Balance",style: GoogleFonts.lato(fontSize: 14),),
                                        Text("000 BDT",style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.green),)
                                      ],
                                    ),
                                  ),),
                                  ),
                            
                             ],
                          ),
                          Positioned(
                            top: height*0.07,
                            left: width*0.19,
                            child: const CircleAvatar(
                              radius: 12,
                                backgroundColor: Colors.green,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Icon(FontAwesomeIcons.upLong,size: 15,color: Colors.green,)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffF2AB28)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(20), // Creates border
                            color: Colors.white,
                          ),
                          tabs: [
                            Text("Reguler bet",
                                style: GoogleFonts.lato(
                                  color: Colors.black,
                                )),
                            Text("Customized bet",
                                style: GoogleFonts.lato(
                                  color: Colors.black,
                                ))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    height: height * 0.48,
                    width: width * 0.9,
                    child: TabBarView(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BetingCard(
                                    height: height, 
                                    width: width, 
                                    matchName: "ludo King Mobile", image: "https://e7.pngegg.com/pngimages/673/759/png-clipart-dicedice-israel-yahtzee-naija-ludo-android-game-logo-thumbnail.png",
                                     winngPrize: "200 BDT", 
                                     entryFee: "50 BDT", 
                                     matchType: "2 vs 2", 
                                     matchStart: "8.00 pm", 
                                     matchEnd: "", 
                                     bordType: "ludu King",
                                     joinButtun: (){})
                                );
                              })),
                    Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BetingCard(
                                    height: height, 
                                    width: width, 
                                    matchName: "ludo King Mobile", image: "https://e7.pngegg.com/pngimages/673/759/png-clipart-dicedice-israel-yahtzee-naija-ludo-android-game-logo-thumbnail.png",
                                     winngPrize: "200 BDT", 
                                     entryFee: "50 BDT", 
                                     matchType: "2 vs 2", 
                                     matchStart: "8.00 pm", 
                                     matchEnd: "9.00 pm", 
                                     bordType: "ludu King",
                                     joinButtun: (){})
                                );
                              })),
                   
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
