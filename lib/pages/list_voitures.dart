// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_01/models/voiture.dart';
import 'package:app_01/pages/detail_voiture.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ListVoiture extends StatefulWidget {
  final List<Voiture> cars;
  const ListVoiture({super.key, required this.cars});

  @override
  State<ListVoiture> createState() => _ListVoitureState();
}

class _ListVoitureState extends State<ListVoiture> {
  List<Padding> list = [];
  bool _isLiked = false;
  @override
  void initState() {
    super.initState();
    setState(() {});
  
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: getPadding(),
      ),
    );
  }

  List<Padding> getPadding() {
    List<Padding> list = [];
    list.add(
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Publications recentes ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(100)
                    
                    ),
                    child: Text("10", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),

            CarouselSlider(
              items: widget.cars[0].photos.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/${i.url}",
                                  fit: BoxFit.cover,
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Marque : ${widget.cars[0].marque}',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailVoiture(
                                              voiture: widget.cars[0])),
                                    );
                                  },
                                  child: Container(
                                    width: 90,
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Voir",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ));
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 300,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enlargeFactor: 0.3,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Divider(),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Toutes les publications ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(100)
                    
                    ),
                    child: Text("+100000", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    list.addAll(widget.cars
        .map((e) => {
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Marque : ${e.marque}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "${e.prix} / jour",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  DetailVoiture(voiture: e),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/${e.photos.first.url}",
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         
                          GestureDetector(
                            onTap: () {
                             setState(() {
                               _isLiked = !_isLiked;
                             });

                              // Navigator.push<void>(
                              //   context,
                              //   MaterialPageRoute<void>(
                              //     builder: (BuildContext context) =>
                              //         DetailVoiture(voiture: e),
                              //   ),
                              // );
                            },
                            child: Icon(
                              _isLiked ? Icons.favorite : Icons.favorite_outline,
                              color: _isLiked ? Colors.red : Colors.blue,
                              size: 40,
                            ),
                          ),
                          Text("12")
                        ],
                      )
                    ],
                  ),
                ),
              )
            })
        .expand((set) => set)
        .toList());
    return list;
  }
  // Padding carsPadding(int index, BuildContext context) {
  //   return
  //   Padding(
  //           padding: const EdgeInsets.all(20.0),
  //           child: Container(
  //             padding: EdgeInsets.all(10),
  //             decoration: BoxDecoration(
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: Colors.orange.withOpacity(0.5),
  //                   spreadRadius: 3,
  //                   blurRadius: 7,
  //                   offset: Offset(0, 3), // changes position of shadow
  //                 ),
  //               ],
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(10),
  //             ),
  //             child: Column(
  //               // crossAxisAlignment: CrossAxisAlignment.baseline,
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Text(
  //                       "Marque : ${widget.cars[index].marque}",
  //                       style: TextStyle(
  //                           fontWeight: FontWeight.bold, fontSize: 18),
  //                     ),
  //                     Text(
  //                       "${widget.cars[index].prix} / jour",
  //                       style: TextStyle(
  //                           fontWeight: FontWeight.bold, fontSize: 18),
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 GestureDetector(
  //                   onTap: () {
  //                     Navigator.push<void>(
  //                       context,
  //                       MaterialPageRoute<void>(
  //                         builder: (BuildContext context) =>
  //                             DetailVoiture(voiture: widget.cars[index]),
  //                       ),
  //                     );
  //                   },
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.circular(10),
  //                     child: Image.asset(
  //                         "images/${widget.cars[index].photos.first.url}",
  //                         fit: BoxFit.cover),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     GestureDetector(
  //                       child: Icon(
  //                         Icons.message,
  //                         color: Colors.blue,
  //                         size: 40,
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 10,
  //                     ),
  //                     GestureDetector(
  //                       onTap: () {
  //                         Navigator.push<void>(
  //                           context,
  //                           MaterialPageRoute<void>(
  //                             builder: (BuildContext context) =>
  //                                 DetailVoiture(voiture: widget.cars[index]),
  //                           ),
  //                         );
  //                       },
  //                       child: Icon(
  //                         Icons.remove_red_eye_outlined,
  //                         color: Colors.blue,
  //                         size: 40,
  //                       ),
  //                     )
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         );
  // }
}
