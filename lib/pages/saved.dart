import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            SafeArea(
              child: Center(
                child: Text(
                  "Saved",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) => const HomePage()));
                      },
                    )],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/bigegg1.png", height: 120,
                        fit: BoxFit.fill,),
                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fried Rice",
                            style: GoogleFonts.sora(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(height: 3,),
                          Text(
                            """Fried rice with egg
and vegetables.""",
                            style: GoogleFonts.sora(
                              fontSize: 16,
                              color: const Color(0xff858992),
                            ),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$3.45",
                                style: GoogleFonts.sora(
                                  fontSize: 18,
                                  color: const Color.fromRGBO(216, 79, 59, 1),
                                ),
                              ),
                              const SizedBox(width: 120,),
                              const Icon(CupertinoIcons.heart_fill,
                                color: Colors.red,)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/rollandfon.png", height: 120,
                          fit: BoxFit.fill,),
                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Syake roll",
                            style: GoogleFonts.sora(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(height: 3,),
                          Text(
                            "Classic Syake rolls.",
                            style: GoogleFonts.sora(
                              fontSize: 16,
                              color: const Color(0xff858992),
                            ),
                          ),
                          const SizedBox(height: 50,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$1.68",
                                style: GoogleFonts.sora(
                                  fontSize: 18,
                                  color: const Color.fromRGBO(216, 79, 59, 1),
                                ),
                              ),
                              const SizedBox(width: 120,),
                              const Icon(CupertinoIcons.heart_fill,
                                color: Colors.red,)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ),
            const SizedBox(height: 50,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: GoogleFonts.sora(
                        fontSize: 22
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$5.30",
                          style: GoogleFonts.sora(
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "USD",
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            color: const Color(0xff9796A1)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: Color(0xffF1F2F3),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery",
                      style: GoogleFonts.sora(
                          fontSize: 22
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$1.00",
                          style: GoogleFonts.sora(
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "USD",
                          style: GoogleFonts.sora(
                              fontSize: 16,
                              color: const Color(0xff9796A1)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: Color(0xffF1F2F3),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Text(
                        "(2 items)",
                        style: GoogleFonts.sora(
                            fontSize: 15,
                            color: const Color(0xffBEBEBE)
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$33.60",
                          style: GoogleFonts.sora(
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "USD",
                          style: GoogleFonts.sora(
                              fontSize: 16,
                              color: const Color(0xff9796A1)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 65,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 250,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(216, 79, 59, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Go cart",
                              style: GoogleFonts.sora(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            const Icon(Icons.arrow_forward,
                              color: Colors.white,)
                          ],
                        ),
                        onPressed: () {},
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}