import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class QR extends StatefulWidget {
  const QR({super.key});

  @override
  _qrState createState() => _qrState();
}

class _qrState extends State<QR> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    Future _imagePick() async {
      final returnedImage = await ImagePicker()
          .pickImage(source: ImageSource.camera);

      if(returnedImage == null) return;

    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Column(
                children: [
                  Text(
                    "Scan your QR Code",
                    style: GoogleFonts.sora(
                        fontSize: 32,
                        color: const Color.fromRGBO(216, 79, 59, 1),
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Container(
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(80)),
                    width: MediaQuery.of(context).size.width,
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/QR.png",
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  _imagePick();
                },
                child: Container(
                  width: width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(216, 79, 59, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/miniQR.png"),
                      const SizedBox(width: 20,),
                      Text(
                        "Scan QR Code",
                        style: GoogleFonts.sora(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
