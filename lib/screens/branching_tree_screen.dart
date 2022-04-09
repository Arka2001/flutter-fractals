import 'package:flutter/material.dart';
import '../painters/painters.dart';
import 'package:google_fonts/google_fonts.dart';

class BranchingTreeScreen extends StatelessWidget {
  const BranchingTreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomPaint(
              size: const Size(300, 300),
              painter: BranchingTree(),
            ),
            const SizedBox(height: 20),
            Text(
              'Branching Tree',
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
