import 'package:flutter/material.dart';
import 'package:zarity/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class Cta extends StatelessWidget {
  const Cta({Key? key, required this.value, required this.image})
      : super(key: key);
  final String value;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              color: kPrimary,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      value,
                      style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                          color: kText,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum ligula eu erat scelerisque, pharetra ornare nisl efficitur. Vestibulum efficitur mauris non auctor rhoncus. ',
                      style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                          color: kText,
                          fontSize: 14,
                        ),
                      ),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                value,
                style: GoogleFonts.outfit(
                  textStyle: TextStyle(
                    color: kText,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cardtitle extends StatelessWidget {
  const Cardtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: AssetImage('assets/pills.png'),
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Article Title',
                    style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                        color: kText,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Article excerpt description that runs two lines long shown here',
                    style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                        color: kText,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox(), flex: 1),
          ],
        ),
      ),
    );
  }
}
