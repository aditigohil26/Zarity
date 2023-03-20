import 'package:flutter/material.dart';
import 'package:zarity/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:zarity/screens/setting.dart';
import 'package:zarity/components/homescreen_components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgcolor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Setting()));
                        },
                        child: Image(
                          image: AssetImage('assets/profile.png'),
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Good Afternoon Jon Doe',
                        style: GoogleFonts.outfit(
                          textStyle: TextStyle(
                            color: kText,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Iconify(
                      AntDesign.message_outlined,
                      color: kIcon,
                    ),
                    SizedBox(
                      width: 22.5,
                    ),
                    Iconify(
                      MaterialSymbols.notifications,
                      color: kIcon,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          color: kPrimary,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Tasks',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Immediate -',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Task 1',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'CTA 1',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'This week -',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Task 2',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'CTA 2',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Task 3',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'CTA 3',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'This Month -',
                                  style: GoogleFonts.outfit(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Task 4',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'CTA 4',
                                      style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  child: const Text('Continue'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: kPrimary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CircularPercentIndicator(
                            radius: 30.0,
                            percent: 0.70,
                            center: Text(
                              "70%",
                              style: TextStyle(
                                color: kText,
                              ),
                            ),
                            progressColor: Color(0xff4281FB),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Please complete your profile to book consultations.',
                            style: GoogleFonts.outfit(
                              textStyle: TextStyle(
                                color: kText,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Section Title 1',
                  style: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      color: kText,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Cta(value: 'CTA 1', image: 'assets/cta.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Cta(value: 'CTA 2', image: 'assets/cta1.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Cta(value: 'CTA 3', image: 'assets/cta1.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Section Title 2',
                  style: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      color: kText,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 18),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                            image: AssetImage('assets/profile2.png'),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Roe Rogan',
                              style: GoogleFonts.outfit(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Sub Text Shown Here \nCard Description',
                              style: GoogleFonts.outfit(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('ElevatedButton Clicked');
                          },
                          child: Text('CTA'),
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    color: kPrimary,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Text(
                      'Card Title',
                      style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                          color: kText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Cardtitle(),
                    SizedBox(
                      height: 2,
                    ),
                    Cardtitle(),
                    SizedBox(
                      height: 2,
                    ),
                    Cardtitle(),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70.0, vertical: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint('ElevatedButton Clicked');
                      },
                      child: Text('View More'),
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items:const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                color: kIcon),
              label: 'Home',
              backgroundColor: kPrimary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
                color: kIcon),
              label: 'Profile',
              backgroundColor: kPrimary,
            ),
            BottomNavigationBarItem(
              icon : Iconify(
                Bxs.injection,
                color: kIcon,
              ),
              label: 'School',
              backgroundColor: kPrimary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.checklist,
                  color: kIcon),
              label: 'Tasks',
              backgroundColor: kPrimary,
            ),
          ],
        ),
      ),
    );
  }

}
