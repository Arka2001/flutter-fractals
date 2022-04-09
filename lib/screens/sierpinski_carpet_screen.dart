import 'package:flutter/material.dart';
import '../painters/painters.dart';
import 'package:google_fonts/google_fonts.dart';

class SierpinskiCarpetScreen extends StatefulWidget {
  const SierpinskiCarpetScreen({Key? key}) : super(key: key);

  @override
  State<SierpinskiCarpetScreen> createState() => _SierpinskiCarpetScreenState();
}

class _SierpinskiCarpetScreenState extends State<SierpinskiCarpetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomPaint(
              size: const Size(300, 300),
              painter: SierpinskiCarpet(),
            ),
            const SizedBox(height: 20),
            Text(
              'Sierpinski Carpet',
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
