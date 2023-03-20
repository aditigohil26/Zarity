import 'package:flutter/material.dart';
import 'package:zarity/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  const Features({Key? key, required this.icn, required this.value})
      : super(key: key);
  final IconData icn;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: ListTile(
          leading: Icon(
            icn,
            color: kIcon,
            size: 30,
          ),
          title: Text(
            value,
            style: GoogleFonts.outfit(
              textStyle: TextStyle(
                color: kText,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}