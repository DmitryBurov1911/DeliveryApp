import 'package:flutter/material.dart';
import 'package:foodapp/pages/need_help.dart';
import 'package:foodapp/pages/privacy_policy.dart';
import 'package:foodapp/pages/termsofuse.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
                    "Settings",
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
            Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(80)),
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NeedHelp()
                      )
                  );
                },
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/BGsettings.png",
                  ),
                ),
              )
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                child: Text(
                  "Privacy Policy",
                  style: GoogleFonts.sora(
                    color: const Color.fromRGBO(216, 79, 59, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivatePolicy()
                      )
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                child: Text(
                  "Terms of use",
                  style: GoogleFonts.sora(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TermsOfUse()
                      )
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
