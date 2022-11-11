// To parse this JSON data, do
//
//     final countries = countriesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Countries countriesFromJson(String str) => Countries.fromJson(json.decode(str));

String countriesToJson(Countries data) => json.encode(data.toJson());

class Countries {
  Countries({
    required this.population,
    required this.greeting,
    required this.instructions,
  });

  int population;
  String greeting;
  List<String> instructions;

  factory Countries.fromJson(Map<String, dynamic> json) => Countries(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        population: json["population"],
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
        "population": population,
      };
}
