import 'package:flutter/material.dart';

String appRootColor = "#00A86B";
Color appBgColor = const Color.fromARGB(124, 35, 36, 35);
const bluePrimaryColor = "#4725F3";

class StateInfo {
  final String state;
  final String country;
  final String description;
  final String image;

  StateInfo({
    required this.state,
    required this.country,
    required this.description,
    required this.image,
  });
}

final List<StateInfo> statesArray = [
  StateInfo(
    state: "California",
    country: "United States",
    description: "Golden State with diverse landscapes and tech hubs.",
    image: 'assets/image.png',
  ),
  StateInfo(
    state: "Tokyo",
    country: "Japan",
    description: "Capital city blending tradition and modern innovation.",
    image: 'assets/image1.png',
  ),
  StateInfo(
    state: "Queensland",
    country: "Australia",
    description: "Sunshine State known for the Great Barrier Reef.",
    image: 'assets/image2.png',
  ),
  StateInfo(
    state: "Bavaria",
    country: "Germany",
    description: "German state rich in culture and scenic landscapes.",
    image: 'assets/image.png',
  ),
  StateInfo(
    state: "Gujarat",
    country: "India",
    description: "Vibrant state with a rich history and industrial growth.",
    image: 'assets/image1.png',
  ),
];
