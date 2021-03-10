import 'package:flutter/material.dart';

Color gradientStart = Colors.grey[900]; //Change start gradient color here
Color gradientEnd = Colors.grey[600]; //Change end gradient color here
Uri _emailLaunchUri = new  Uri(
    scheme: 'mailto',
    path: 'provincialkid@gmail.com',
    queryParameters: {
      'subject': 'Example Subject & Symbols are allowed!'
    }
);