import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:generate_art/painters/painters.dart';
import 'package:google_fonts/google_fonts.dart';

class GenerateScreen extends StatefulWidget {
  const GenerateScreen({Key? key}) : super(key: key);

  @override
  _GenerateScreenState createState() => _GenerateScreenState();
}

class _GenerateScreenState extends State<GenerateScreen> {
  bool isLoading = false;
  int current = -1;

  List<CustomPaint> fractals = [
    CustomPaint(
      painter: BranchingTree(),
      size: const Size(300, 300),
    ),
    CustomPaint(
      painter: SierpinskiCarpet(),
      size: const Size(300, 300),
    ),
    CustomPaint(
      painter: DragonCurve(),
      size: const Size(300, 300),
    ),
  ];

  int generateFractal() {
    setState(() {
      isLoading = true;
    });
    Timer(Duration(seconds: 3), () {});
    setState(() {
      current = Random().nextInt(fractals.length);
      isLoading = false;
    });

    return current;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        centerTitle: true,
        title: Text(
          'Flutter Fractals',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            current == -1 ? Container() : fractals[current],
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo[800]),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
              ),
              onPressed: generateFractal,
              child: Text(
                'Generate',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
