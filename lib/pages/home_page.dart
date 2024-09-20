// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:app_01/models/image.dart';
import 'package:app_01/models/voiture.dart';
import 'package:app_01/pages/contact.dart';
import 'package:app_01/pages/detail_voiture.dart';
import 'package:app_01/pages/list_voitures.dart';
import 'package:app_01/pages/login.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1;
  List<Voiture> cars = [
    Voiture(
        marque: 'BMW',
        modele: 'Serie 1',
        annee: '2024',
        couleur: 'Blanc',
        kilometrage: '0',
        prix: '50.000',
        photos: [Photo(url: 'mercedes.png'), Photo(url: 'bmw.jpg')],
        description: 'Voiture robuste et puissante.'),
    Voiture(
        marque: 'MERCEDES',
        modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG',
        annee: '2024',
        couleur: 'Noir',
        kilometrage: '0',
        prix: '90.000',
        photos: [Photo(url: 'mercedes.png'), Photo(url: 'bmw.jpg')],
        description: 'Voiture robuste et puissante.'),
    Voiture(
        marque: 'MERCEDES',
        modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG',
        annee: '2024',
        couleur: 'Noir',
        kilometrage: '0',
        prix: '90.000',
        photos: [Photo(url: 'mercedes.png'), Photo(url: 'bmw.jpg')],
        description: 'Voiture robuste et puissante.'),
    Voiture(
        marque: 'MERCEDES',
        modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG',
        annee: '2024',
        couleur: 'Noir',
        kilometrage: '0',
        prix: '90.000',
        photos: [Photo(url: 'mercedes.png'), Photo(url: 'bmw.jpg')],
        description: 'Voiture robuste et puissante.'),
    Voiture(
        marque: 'MERCEDES',
        modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG',
        annee: '2024',
        couleur: 'Noir',
        kilometrage: '0',
        prix: '90.000',
        photos: [Photo(url: 'mercedes.png'), Photo(url: 'bmw.jpg')],
        description: 'Voiture robuste et puissante.'),
    Voiture(
        marque: 'MERCEDES',
        modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG',
        annee: '2024',
        couleur: 'Noir',
        kilometrage: '0',
        prix: '90.000',
        photos: [Photo(url: 'mercedes.png'), Photo(url: 'bmw.jpg')],
        description: 'Voiture robuste et puissante.'),
  ];
  // late final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          // title: Text("Louer une voiture a un prix abordable !"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Column(
              children: [
                TabBar(
                  // controller: _tabController,
                  tabs: [
                    Column(
                      children: [
                        Icon(
                          CupertinoIcons.car_fill,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        Text(
                          "Nos voitures",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        Text(
                          "Nous contacter",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        Text(
                          "Connexion",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        // backgroundColor: Colors.grey[300],
        body: TabBarView(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Recherche',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                ListVoiture(cars: cars),
                
                // ContactPage()
              ],
            ),
            ContactPage(),
            LoginPage()
          ],
        ),
      ),
    );
  }
}
