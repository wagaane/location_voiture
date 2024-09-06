// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:app_01/models/image.dart';
import 'package:app_01/models/voiture.dart';
import 'package:app_01/pages/home_1.dart';
import 'package:app_01/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    List<Voiture> cars = [
      Voiture(marque: 'BMW', modele: 'Serie 1', annee: '2024', couleur: 'Blanc', kilometrage: '0', prix: '50.000', photos: [Photo(url: 'mercedes.png'),Photo(url: 'bmw.jpg')], description: 'Voiture robuste et puissante.'),
      Voiture(marque: 'MERCEDES', modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG', annee: '2024', couleur: 'Noir', kilometrage: '0', prix: '90.000', photos: [Photo(url: 'mercedes.png'),Photo(url: 'bmw.jpg')], description: 'Voiture robuste et puissante.'),
      Voiture(marque: 'MERCEDES', modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG', annee: '2024', couleur: 'Noir', kilometrage: '0', prix: '90.000', photos: [Photo(url: 'mercedes.png'),Photo(url: 'bmw.jpg')], description: 'Voiture robuste et puissante.'),
      Voiture(marque: 'MERCEDES', modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG', annee: '2024', couleur: 'Noir', kilometrage: '0', prix: '90.000', photos: [Photo(url: 'mercedes.png'),Photo(url: 'bmw.jpg')], description: 'Voiture robuste et puissante.'),
      Voiture(marque: 'MERCEDES', modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG', annee: '2024', couleur: 'Noir', kilometrage: '0', prix: '90.000', photos: [Photo(url: 'mercedes.png'),Photo(url: 'bmw.jpg')], description: 'Voiture robuste et puissante.'),
      Voiture(marque: 'MERCEDES', modele: 'MERCEDES-BENZ GLC 220D ALGERIE 4M AMG', annee: '2024', couleur: 'Noir', kilometrage: '0', prix: '90.000', photos: [Photo(url: 'mercedes.png'),Photo(url: 'bmw.jpg')], description: 'Voiture robuste et puissante.'),
    ];
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage1(cars: cars),
    );
  }
}
