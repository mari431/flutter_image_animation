class Magazine {
  const Magazine({
    required this.id,
    required this.assetImage,
    required this.description,
  });

  final String id;
  final String assetImage;
  final String description;
  static final List<Magazine> fakeMagazinesValues = List.generate(
    5,
        (index) => Magazine(
      id: '$index',
      assetImage: 'assets/img/mimg${index + 1}.jpg',
      description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting ',
    ),
  );
}



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;

// class Magazine {
//   const Magazine({
//     required this.id,
//     required this.assetImage,
//     required this.description,
//   });
//
//   final String id;
//   final String assetImage;
//   final String description;
//
//   factory Magazine.fromJson(Map<String, dynamic> json) {
//     return Magazine(
//       id: json['id'] as String,
//       assetImage: json['assetImage'] as String,
//       description: json['description'] as String,
//     );
//   }
//
//   // static final List<Magazine> fakeMagazinesValues = List.generate(
//   //   5,
//   //       (index) => Magazine(
//   //     id: '$index',
//   //     assetImage: 'assets/img/mimg${index + 1}.jpg',
//   //     description:
//   //     'Lorem Ipsum is simply dummy text of the printing and typesetting ',
//   //   ),
//   // );
//
//
// }
