import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem(String title, int index) {
      return InkWell(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(18),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              /// NAV BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 72,
                    height: 40,
                  ),
                  Row(
                    children: [
                      navItem('Guides', 0),
                      SizedBox(
                        width: 50,
                      ),
                      navItem('Pricing', 1),
                      SizedBox(
                        width: 50,
                      ),
                      navItem('Teams', 2),
                      SizedBox(
                        width: 50,
                      ),
                      navItem('Stories', 3),
                    ],
                  ),
                  Image.asset(
                    'images/btn_account.png',
                    width: 163,
                    height: 53,
                  )
                ],
              ),

              /// CONTENT
              SizedBox(
                height: 76,
              ),
              Image.asset(
                'images/illustration.png',
                width: 763,
                height: 550,
              ),

              /// FOOTER
              SizedBox(
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/icon_down_solid.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
