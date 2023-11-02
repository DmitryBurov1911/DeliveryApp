import 'package:flutter/material.dart';
import 'package:foodapp/pages/homepage.dart';
import 'package:foodapp/pages/settings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'glavpage.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
          padding: const EdgeInsets.all(30),
          child: SizedBox(
            height: size.height,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder:
                                      (context) => const HomePage())
                              );
                            },
                            icon: const Icon(Icons.arrow_back_ios)
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder:
                                      (context) => const Settings())
                              );
                            },
                            icon: const Icon(Icons.settings)
                        )
                      ],
                    ),
                    Container(
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(80)),
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/BannerSales.png",
                        ),
                      ),
                    ),
                    DefaultTabController(
                        length: 2,
                        child: TabBar(
                          indicatorColor: const Color.fromRGBO(216, 79, 59, 1),
                          indicatorWeight: 4,
                          unselectedLabelColor: Colors.black,
                          isScrollable: true,
                          labelColor: const Color.fromRGBO(216, 79, 59, 1),
                          tabs: [
                            Tab(
                              child:
                              Text(
                                "All Sales",
                                style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Tab(
                              child:
                              Text(
                                "Monthly discounts",
                                style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                    SizedBox(
                      height: size.height,
                      child: GridView.builder(
                        itemCount: names.length,
                        gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 220,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 1 / 1.3
                        ),
                        itemBuilder: (context, index) {
                          var textColor = Colors.black;
                          return Container(
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 3,
                                        spreadRadius: 0.5
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Text(
                                                    names[index],
                                                    style: GoogleFonts.sora(
                                                        fontSize: 17,
                                                        fontWeight: FontWeight
                                                            .w700,
                                                        color: textColor
                                                    ),
                                                  ),
                                                  Image.
                                                  asset("assets/percent.png")
                                                ],
                                              )
                                            ],
                                          )
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            children: [
                                              Text(
                                                price[index].toString(),
                                                style: GoogleFonts.sora(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color: textColor
                                                ),
                                              ),
                                            ],
                                          )),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        image[index],
                                        height: 90,
                                      )
                                    ]),
                              )
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
    );
  }
}
