import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            SafeArea(
              child: Center(
                child: Text(
                  "Terms of use",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )],
            ),
            const SizedBox(height: 20,),
            Text(
              "Eleifend et. Sit dapibus interdum libero, est. Quis, molestie morbi malesuada mattis malesuada ipsum et non vulputate in lorem ut. Eleifend quam, platea leo, consectetur mattis malesuada leo, dolor venenatis cras dui luctus accumsan eleifend in lorem et. Sodales aenean augue tortor, platea faucibus. Sit integer amet aenean luctus sapien nunc mollis ipsum dictum sit non et morbi in est. Imperdiet molestie ipsum dolor dictum. Eget sit non eleifend et. Imperdiet sed vitae luctus libero, adipiscing vitae venenatis lectus dictum. Dictumst. Sapien imperdiet in platea pellentesque risus non dictum quam, sapien hac mauris quam, dapibus consectetur nunc lectus dapibus faucibus. Mattis velit in id ornare arcu ornare eleifend sit aenean et. Mollis sodales mattis nulla non nec non non sed sit dui adipiscing lorem mauris imperdiet sit sit tempus vitae eget elit. Sodales nunc interdum et. Amet, vestibulum molestie sapien luctus augue et faucibus. Justo habitasse amet mauris nunc id dictumst. Cras mattis faucibus. Tempus integer tortor, leo, sed elit. Tortor, leo, pulvinar faucibus. Efficitur nunc amet, ornare cursus ut. Lorem nec amet, leo, est.",
              style: GoogleFonts.sora(
                  fontSize: 17,
                  color: const Color(0xff101010),
                  fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );
  }
}
