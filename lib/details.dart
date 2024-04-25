import 'package:flutter/material.dart';

/// Home screen details

final texts = [
  'Complain',
  'Rate us',
  'Help',
];

final icons = [
  Icons.error_outline_outlined,
  Icons.star_rate_outlined,
  Icons.help_outline,
];

 final cities = [
  'Andijon Shahar',
  'Andijon Tuman',
  'Toshkent Shahar',
  'Bektemir Tuman',
  'Baliqchi Tuman',
  'Shahrihon Tuman',
  'Sergili Tuman',
];

final cars = [
  'nexia',
  'cobalt',
  'lacetti',
  'malibu',
];

final carsT = [
  'Nexia',
  'Cobalt',
  'Lacetti',
  'Malibu',
];

final carsC = [
  12,
  9,
  6,
  3
];

final carsA = [
  6,
  5,
  4,
  2
];

String city1 = selectedItem1;
String city2 = selectedItem2;

 String selectedItem1 = cities[0];
 String selectedItem2 = cities[2];

bool error = false;

bool check1 = false;
bool check2 = false;
bool check3 = false;

final controller4 = TextEditingController();

/// Login screen details

bool field1 = false;
bool field2 = false;
bool field3 = false;

bool obscure = true;

bool hasError1 = false;
bool hasError2 = false;
bool hasError3 = false;

final TextEditingController controller1 = TextEditingController();
final TextEditingController controller2 = TextEditingController();
final TextEditingController controller3 = TextEditingController();