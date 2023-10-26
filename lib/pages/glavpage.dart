import 'package:flutter/material.dart';
import 'package:foodapp/pages/detail_page.dart';
import 'package:foodapp/pages/qr.dart';
import 'package:foodapp/pages/settings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final names = [
  "Fried Rice",
  "Syake roll",
  "Onigiri",
  "Funchoza",
];

final price = [
  3.45,
  1.68,
  0.99,
  4.76,
];

final stars = [
  5, 4, 5, 5
];

final image = [
  "assets/egg.png",
  "assets/sushi.png",
  "assets/onigiri.png",
  "assets/funchoza.png",
];

final desc = [
  "Fried rice with egg and vegetables, flavorful and delicious. The vegetables in this dish will stay firm and fresh, which gives this dish a special flavor.",
  "is a Japanese dish of prepared vinegared rice (鮨飯, sushi-meshi), usually with some sugar and salt, accompanied by a variety of ingredients.",
  "is a Japanese food made from white rice formed into triangular or cylindrical shapes and often wrapped in nori.",
  "Fried rice with egg and vegetables, flavorful and delicious. The vegetables in this dish will stay firm and fresh, which gives this dish a special flavor.",
];

final bigimage = [
  "assets/bigegg.png",
  "assets/bigegg.png",
  "assets/bigegg.png",
  "assets/bigegg.png"
];

class GlavPage extends StatefulWidget {
  const GlavPage({super.key});

  @override
  State<GlavPage> createState() => _GlavPageState();
}

class _GlavPageState extends State<GlavPage> {
  final pageController = PageController(viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.qr_code,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const QR()
                      )
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()
                        )
                    );
                  },
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                """What would you like
to order""",
                style:
                GoogleFonts.sora(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(80)),
              width: width,
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/Banner.png",
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Categories",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w700, fontSize: 20)),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: width / 4,
                    height: width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 3,
                            spreadRadius: 0.5)
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/rice.png",
                            height: 35,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Rice",
                            style: GoogleFonts.sora(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )),
                Container(
                    width: width / 4,
                    height: width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 3,
                            spreadRadius: 0.5
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/noodles.png",
                            height: 35,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Noodles",
                            style: GoogleFonts.sora(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )),
                Container(
                    width: width / 4,
                    height: width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 3,
                            spreadRadius: 0.5)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/salads.png",
                            height: 35,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Salads",
                            style: GoogleFonts.sora(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 200,
                child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      Color color = const Color.fromRGBO(216, 79, 59, 1);
                      Color textColor = Colors.white;
                      var bottom = 0.0;
                      if (index % 2 != 0) {
                        color = Colors.white;
                        textColor = Colors.black;
                        bottom = 8;
                      }
                      return SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            name: names[index].toString(),
                                            price: price[index],
                                            stars: stars[index],
                                            image: bigimage[index],
                                            description: desc[index].toString(),
                                            like: false,
                                        )
                                    )
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: color,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 3,
                                          spreadRadius: 0.5)
                                    ]),
                                margin: EdgeInsets.only(
                                    top: 5, bottom: bottom, right: 1, left: 1),
                                width: 170,
                                padding: const EdgeInsets.all(15),
                                child: Column(children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        children: [
                                          Text(
                                            names[index],
                                            style: GoogleFonts.sora(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700,
                                                color: textColor
                                            ),
                                          ),
                                        ],
                                      )),
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
                                    height: 100,
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: names.length,
              effect: const WormEffect(
                  activeDotColor: Color.fromRGBO(216, 79, 59, 1),
                  dotColor: Color.fromRGBO(216, 79, 59, 0.3),
                  dotHeight: 10,
                  dotWidth: 10),
            )
          ]),
        ),
      ),
    );
  }
}
