import 'package:flutter/material.dart';
import 'package:ui_design/ui_design.dart';

class Categorie extends StatelessWidget {
  final String path;
  final String name;
  const Categorie({Key? key, required this.path, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        backgroundImage: AssetImage(path),
        radius: 30,
      ),
      verticalSpaceTiny,
      Text(name,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
    ]);
  }
}
