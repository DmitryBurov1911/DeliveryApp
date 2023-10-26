import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: width,
              child: Image.asset("assets/Background.png",
                fit: BoxFit.fill,),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 25, top: 45
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 1,
                                  spreadRadius: 0.5)
                            ],
                          ),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                    const HomePage()));
                              },
                              child: const Icon(CupertinoIcons
                                  .arrow_left)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width - 180,
                      child: Image.asset("assets/woman_eat.png",
                        fit: BoxFit.fill,),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Full name",
                        style: GoogleFonts.sora(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff9796A1)
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.sora(
                          color: const Color(0xffEDEBEB),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffEEEEEE),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(216, 79, 59, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        hintText: "Your Name",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Phone number",
                        style: GoogleFonts.sora(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff9796A1)
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.sora(
                          color: const Color(0xffEDEBEB),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffEEEEEE),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(216, 79, 59, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        hintText: "+5(988) 5545 309",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Adress",
                        style: GoogleFonts.sora(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff9796A1)
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.sora(
                          color: const Color(0xffEDEBEB),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffEEEEEE),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(216, 79, 59, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        hintText: "Street, building, apartment",
                      ),
                    ),
                    const SizedBox(height: 50,),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: width - 220,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromRGBO(216, 79, 59, 1)
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Save",
                            style: GoogleFonts.sora(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )  ,
      )
    );
  }
}
