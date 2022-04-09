import 'package:flutter/material.dart';
import '../painters/painters.dart';
import 'package:google_fonts/google_fonts.dart';

class DragonCurveScreen extends StatelessWidget {
  const DragonCurveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomPaint(
              size: const Size(300, 300),
              painter: DragonCurve(),
            ),
            const SizedBox(height: 20),
            Text(
              'Dragon Curve',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
