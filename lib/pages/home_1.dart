// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:app_01/models/voiture.dart';
import 'package:app_01/pages/detail_voiture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  final List<Voiture> cars;
  const HomePage1({super.key, required this.cars});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.car_fill,
                          color: Colors.orange,
                          size: 24.0,
                        ),
                        Text(
                          "Nos voiture",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.orange,
                        ),
                        Text(
                          "Nous contacter",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.login,
                          color: Colors.orange,
                        ),
                        Text(
                          "Connexion",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.cars.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
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
                                "Marque : ${widget.cars[index].marque}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "${widget.cars[index].prix} / jour",
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
                                           DetailVoiture(voiture: widget.cars[index]),
                                    ),
                                  );
                                },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  "images/${widget.cars[index].photos.first.url}",
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
                                child: Icon(
                                  Icons.message,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                           DetailVoiture(voiture: widget.cars[index]),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
