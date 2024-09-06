
import 'dart:ui';

import 'package:app_01/models/image.dart';


class Voiture{
  final String marque;
  final String modele;
  final String annee;
  final String couleur;
  final String kilometrage;
  final String prix;
  final List<Photo> photos;
  final String description;
  Voiture({
    required this.marque, 
    required this.modele, 
    required this.annee,
    required this.couleur,
    required this.kilometrage,
    required this.prix,
    required this.photos,
    required this.description,
    });
}