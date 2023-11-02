import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:foodapp/pages/startPages/startPage.dart';

class TwoStatePage extends StatelessWidget {
  const TwoStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/startpage1.png"),
              height: 290,),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: Column(
                children: [
                  Text(
                    "All your favourites dishes",
                    style: GoogleFonts.sora(
                        color: const Color.fromRGBO(216,79,59,1),
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                    ),
                  ),
                  Text(
                    """Order from the best local restaurants
with ease and on-demand delivery""",
                    style: GoogleFonts.sora(
                        color: const Color.fromRGBO(16,16,16,1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                      onPressed: () => {controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut
                      )},
                      child: Text(
                        "Next",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(216,79,59,1),
                            fontSize: 18
                        ),
                      )
                  ),
                  const SizedBox(height: 90,),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                          activeDotColor: Color.fromRGBO(216,79,59,1),
                          dotColor: Color.fromRGBO(216,79,59,0.3),
                          dotHeight: 10,
                          dotWidth: 10
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}
