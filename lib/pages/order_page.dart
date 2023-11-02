import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order Details",
                      style: GoogleFonts.sora(
                          color: const Color(0xff0A191E),
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/cross.png"),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/bigegg1.png", height: 100,
                          fit: BoxFit.fill,),
                        const SizedBox(width: 15,),
                        SizedBox(
                          height: size.height / 8.5,
                          width: size.width / 1.9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Fried Rice",
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  const SizedBox(height: 3,),
                                  Text(
                                    """Fried rice with egg
and vegetables.""",
                                    style: GoogleFonts.sora(
                                      fontSize: 14,
                                      color: const Color(0xff858992),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "\$3.45",
                                    style: GoogleFonts.sora(
                                      fontSize: 18,
                                      color: const Color.fromRGBO(
                                          216,
                                          79,
                                          59,
                                          1
                                      ),
                                    ),
                                  ),
                                  const Icon(CupertinoIcons.delete,
                                    color: Colors.red,)
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/rollandfon.png", height: 100,
                          fit: BoxFit.fill,),
                        const SizedBox(width: 15,),
                        SizedBox(
                          height: size.height / 8,
                          width: size.width / 1.9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Syake roll",
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  const SizedBox(height: 3,),
                                  Text(
                                    "Classic Syake rolls.",
                                    style: GoogleFonts.sora(
                                      fontSize: 14,
                                      color: const Color(0xff858992),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "\$1.68",
                                    style: GoogleFonts.sora(
                                      fontSize: 18,
                                      color: const Color.fromRGBO(
                                          216,
                                          79,
                                          59,
                                          1
                                      ),
                                    ),
                                  ),
                                  const Icon(CupertinoIcons.delete,
                                    color: Colors.red,)
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 2
                      ),
                    ),
                    hintText: "Enter your promo",
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Color.fromRGBO(216, 79, 59, 1),
                    )
                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(80)),
                  width: size.width,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/BannerOD.png",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            child: SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                          "Order Details",
                                          style: GoogleFonts.sora(
                                              color: const Color(0xff0A191E),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Image.asset("assets/cross.png"),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 105,),
                                    Column(
                                      children: [
                                        Text(
                                          """Your order is being processed please wait...""",
                                          style: GoogleFonts.sora(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff101010)
                                          ),
                                        ),
                                        Image.asset("assets/JapanMan.png")
                                      ],
                                    ),
                                    const SizedBox(height: 105,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: size.width - 250,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  216,
                                                  79,
                                                  59,
                                                  1
                                              ),
                                              borderRadius: BorderRadius
                                                  .circular(15)
                                          ),
                                          child:Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Go menu",
                                                  style: GoogleFonts.sora(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontSize: 15
                                                  ),
                                                ),
                                                const SizedBox(width: 10,),
                                                const Icon(
                                                  CupertinoIcons.arrow_right,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        );
                      },
                      child: Container(
                        width: size.width - 250,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(216, 79, 59, 1),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Order up",
                              style: GoogleFonts.sora(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        )
    );
  }
}
