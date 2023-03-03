import 'package:flutter/material.dart';
import 'package:zarity/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgcolor,
        body: Padding(
          padding: EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: kIcon,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Jon Doe',
                      style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                          color: kText,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Features(icn: Icons.notifications, value: 'Notifications'),
                SizedBox(
                  height: 10,
                ),
                Features(icn: Icons.lock, value: 'Privacy'),
                SizedBox(
                  height: 10,
                ),
                Features(icn: Icons.help, value: 'Help Center'),
                SizedBox(
                  height: 10,
                ),
                Features(icn: Icons.settings, value: 'General'),
                SizedBox(
                  height: 10,
                ),
                Features(icn: Icons.info, value: 'About Us'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
