import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeedHelp extends StatelessWidget {
  const NeedHelp({super.key});

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
                  "",
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
            const SizedBox(height: 75,),
            Text(
              """Something went wrong, please
                            try later""",
              style: GoogleFonts.sora(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Color(0xff101010)
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset("assets/sadsushi.png")
          ],
        ),
      ),
    );
  }
}
