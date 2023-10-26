import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/bloc/counter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  String name;
  double price;
  int stars;
  String description;
  String image;
  bool like;

  DetailPage({
    this.name = '',
    this.price = 0.0,
    this.stars = 0,
    this.description = "",
    this.image = "",
    this.like = false
  });

  @override
  _detailPageState createState() => _detailPageState();
}

class _detailPageState extends State<DetailPage> {
  bool hearth = false;

  @override
  Widget build(BuildContext context) {
    Color hearthColor = hearth ? const Color.fromRGBO(216, 79, 59, 1)
        : Colors.black;

    var width = MediaQuery.of(context).size.width;

    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          var bloc = BlocProvider.of<CounterBloc>(context);
          return Scaffold(
              body: Stack(
                children: [
                  SizedBox(
                    width: width,
                    child: Image.asset("assets/Background.png",
                      fit: BoxFit.fill,),
                  ),
                  SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 25, top: 35
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
                                        Navigator.pop(context);
                                      },
                                      child: const Icon(CupertinoIcons
                                          .arrow_left)
                                  ),
                                ),
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
                                        setState(() {
                                          hearth = !hearth;
                                        });
                                      },
                                      child: Icon(CupertinoIcons
                                          .heart_fill, color: hearthColor,)
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              width: 340,
                              child: Image.asset(
                                widget.image,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.name,
                                style: GoogleFonts.sora(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
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
                                  Icons.star_border,
                                  size: 15,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${widget.price.toString()}",
                                  style: GoogleFonts.sora(
                                      color: const Color.fromRGBO(
                                          216,
                                          79,
                                          59,
                                          1
                                      ),
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              216,
                                              79,
                                              59,
                                              1
                                          ),
                                        ),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  216,
                                                  79,
                                                  59,
                                                  1
                                              ),
                                              blurRadius: 10,
                                              spreadRadius: 0.3,
                                              offset: Offset(5, 5)
                                          )
                                        ],
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            bloc.add(CounterDecEvent());
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Color.fromRGBO(
                                                216,
                                                79,
                                                59,
                                                1
                                            ),
                                            size: 20,
                                          )
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Text(
                                      "$state",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            216,
                                            79,
                                            59,
                                            1
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  216,
                                                  79,
                                                  59,
                                                  1
                                              ),
                                              blurRadius: 10,
                                              spreadRadius: 0.3,
                                              offset: Offset(5, 5)
                                          )
                                        ],
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            bloc.add(CounterIncEvent());
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 20,
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              "Fried rice with egg and vegetables, flavorful and delicious. The vegetables in this dish will stay firm and fresh, which gives this dish a special flavor.",
                              style: GoogleFonts.sora(
                                  fontSize: 18,
                                  color: const Color(0xff858992),
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            const SizedBox(height: 130,),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 70,
                                  width: width - 200,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(216, 79, 59, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      child: Text("Add to cart",
                                        style: GoogleFonts.sora(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400
                                        ),),
                                      onPressed: () {},
                                    ),
                                  )
                              ),
                            )
                          ],
                        ),
                      )
                  )
                ],
              )
          );
        },
      )
    );
  }
}
