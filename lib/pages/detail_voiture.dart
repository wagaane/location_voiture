// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_01/models/voiture.dart';
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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
              ),
              child: Center(
                  child: Text(
                widget.voiture.marque.toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.voiture.photos.length,
              itemBuilder: (context, indice) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      child: Image.asset(
                        "images/${widget.voiture.photos[indice].url}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
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
                              color: Colors.orange,
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
                              color: Colors.orange,
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
                              color: Colors.orange,
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
                              color: Colors.orange,
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
                              color: Colors.orange,
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
