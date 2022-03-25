import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double iter = 0.0;

  List<ColorInfo> colorList =
      List.generate(20, (index) => colors[Random().nextInt(colors.length)]);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) async {
      for (int i = 0; i < 2000000; i++) {
        setState(() {
          iter += 0.00001;
        });
        await Future.delayed(const Duration(milliseconds: 50));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Art Generation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child: CustomPaint(
            painter: DemoPainter(iter: iter, colorList: colorList),
            child: Container(),
          ),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  DemoPainter({required this.iter, required this.colorList});

  double iter;
  List<ColorInfo> colorList;

  @override
  void paint(Canvas canvas, Size size) {
    renderDrawing(canvas, size);
  }

  void renderDrawing(Canvas canvas, Size size) {
    canvas.drawPaint(Paint()..color = Colors.black87);

    // Number of iterations to draw
    // 9 shows a lot of hidden details but feel free to tinker around
    // int iter = 10;

    renderDynamicStructure(canvas, size, iter, colorList, 9);
  }

  // Recursive Function to draw circles which iterates from a number iter to 0

  void renderStaticStructure(Canvas canvas, Size size, int iter, int initIter) {
    if (iter == 0) {
      return;
    }

    double x = 0.0;

    Color c = colors[Random().nextInt(colors.length)].color;

    for (double i = 0; i < 1000; i += 0.01) {
      canvas.drawCircle(
        // This is where the magic happens
        Offset(
          (size.width / 3) +
              // Change these functions for various things to happen
              // Change "atan(x) * sin(x) * cos(x)" to "cos(x) * sin(x)" or any combination of trigonometric functions
              (x * cos(x)),
          (size.height / 2) +
              // Same changes for these as the top
              // Note that if the top functions and these are the same, you'll get a 45 degree line of points
              (x * sin(x)),
        ),

        // Change this for changing radius in different iterations
        5.0 - (0.5 * (initIter - iter)),

        // Well... color
        Paint()..color = c,
      );

      // Change the "0.1" for varying point distances
      x = x + (0.2 + (0.1 * initIter - iter));
    }

    renderStaticStructure(canvas, size, iter - 1, initIter);
  }

  // Recursive Function to draw circles which iterates from a number iter to 0

  void renderDynamicStructure(Canvas canvas, Size size, double iter,
      List<ColorInfo> colors, int totalIter) {
    for (int j = 0; j < totalIter; j++) {
      double x = 0.0;
      double tempIter = totalIter - j + iter;

      for (double i = 0; i < 100; i += 0.01) {
        canvas.drawCircle(
          // This is where the magic happens
          Offset(
            (size.width / 2) +
                // Change these functions for various things to happen
                // Change "atan(x) * sin(x) * cos(x)" to "cos(x) * sin(x)" or any combination of trigonometric functions
                (x * sin(x) * tan(x)),
            (size.height / 2) +
                // Same changes for these as the top
                // Note that if the top functions and these are the same, you'll get a 45 degree line of points
                (x * cos(x) * atan(x)),
          ),

          // Change this for changing radius in different iterations
          5.0 - (0.5 * (tempIter - iter)),

          // Well... color
          Paint()..color = colors[j].color,
        );

        // Change the "0.1" for varying point distances
        x = x + (0.2 + (0.1 * tempIter - iter));
      }
    }
  }

  @override
  bool shouldRepaint(DemoPainter oldDelegate) {
    return iter != oldDelegate.iter;
  }
}

var colors = [
  //ColorInfo("black", Colors.black, Colors.black.toString()),
  ColorInfo("red", Colors.red, Colors.red[500].toString()),
  // ColorInfo("green", Colors.green, Colors.green[500].toString()),
  ColorInfo("blue", Colors.blue, Colors.blue[700].toString()),
  // ColorInfo("yellow", Colors.yellow, Colors.yellow[500].toString()),
  // ColorInfo("purple", Colors.purple, Colors.purple[500].toString()),
  // ColorInfo("amber", Colors.amber, Colors.amber[500].toString()),
  // ColorInfo("cyan", Colors.cyan, Colors.cyan[500].toString()),
  // ColorInfo("grey", Colors.grey, Colors.grey[500].toString()),
  // ColorInfo("teal", Colors.teal, Colors.teal[500].toString()),
  ColorInfo("pink", Colors.pink, Colors.pink[500].toString()),
  ColorInfo("orange", Colors.orange, Colors.orange[500].toString()),
  ColorInfo("indigo", Colors.indigo, Colors.indigo[700].toString()),
  //ColorInfo("white", Colors.white, Colors.white.toString()),
  //ColorInfo("transparent", Colors.transparent, Colors.transparent.toString()),
];

class ColorInfo {
  String name;
  MaterialColor color;
  String hex;

  ColorInfo(this.name, this.color, this.hex);
}
