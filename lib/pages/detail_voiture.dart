// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_01/models/voiture.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailVoiture extends StatefulWidget {
  final Voiture voiture;
  const DetailVoiture({super.key, required this.voiture});

  @override
  State<DetailVoiture> createState() => _DetailVoitureState();
}

class _DetailVoitureState extends State<DetailVoiture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          widget.voiture.marque.toUpperCase(),
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 300,
              child: 
              CarouselSlider(
                  items: widget.voiture.photos.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.amber),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                child: Image.asset(
                                  "images/${i.url}",
                                  fit: BoxFit.cover,
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
                  ))),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.model_training_outlined,
                              color: Colors.blue,
                            ),
                            Text("Modele"),
                          ],
                        ),
                        Text(
                          widget.voiture.modele.length > 10
                              ? '${widget.voiture.modele.substring(0, 10)}...'
                              : widget.voiture.modele,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.date_range_outlined,
                              color: Colors.blue,
                            ),
                            Text("Annee"),
                          ],
                        ),
                        Text(widget.voiture.annee,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.color_lens_outlined,
                              color: Colors.blue,
                            ),
                            Text("Couleur"),
                          ],
                        ),
                        Text(widget.voiture.couleur,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.display_settings_sharp,
                              color: Colors.blue,
                            ),
                            Text("Kilometrage"),
                          ],
                        ),
                        Text(widget.voiture.kilometrage,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.money_outlined,
                              color: Colors.blue,
                            ),
                            Text("Montant / jour"),
                          ],
                        ),
                        Text("${widget.voiture.prix} F",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => Dialog(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Informations loueur'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(1000),
                                            child: Image.asset(
                                              "images/img.jpeg",
                                              fit: BoxFit.cover,
                                              width: 100,
                                              height: 100,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .contact_emergency_outlined,
                                                    color: Colors.orange,
                                                  ),
                                                  Text(
                                                    " Ablaye Faye",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                ],
                                              ),
                                              Divider(),
                                              Row(
                                                children: [
                                                  Icon(
                                                    CupertinoIcons
                                                        .location_circle,
                                                    color: Colors.orange,
                                                  ),
                                                  Text("Haan Mariste",
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                ],
                                              ),
                                              Divider(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .phone_callback_outlined,
                                                    color: Colors.orange,
                                                  ),
                                                  Text("77 777 24 00",
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                      ),
                                      Divider(),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons.close_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                    },
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.car_rental_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Louer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
