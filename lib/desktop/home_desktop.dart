import 'package:color_schifter/components/colors.dart';
import 'package:color_schifter/components/constants.dart';
import 'package:color_schifter/components/logic/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';

class DesktopHome extends StatefulWidget {
  @override
  _DesktopHomeState createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    //
    var primaryColor = palettes[i].primary;
    var secondaryColor = palettes[i].secondary;
    var accentColor = palettes[i].accent;
    var textColor = palettes[i].text;
    //

    void incrementIndex() {
      if (i < palettes.length - 1) {
        i++;
      } else {
        i = 0;
      }
      print(i);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor,
        titleSpacing: 0.0,
        title: Padding(
          padding: EdgeInsets.only(left: 200),
          child: Text(
            'ColorShifter',
            style: TextStyle(
              color: textColor,
              fontFamily: 'Sriracha',
              fontSize: 48,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: FlatButton.icon(
              icon: CIcon(
                IconMoon.icon_github,
                color: textColor,
                size: 26,
                textDirection: TextDirection.rtl,
              ),
              label: Text(
                'GitHub',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              onPressed: () => launchURL(gitHubUrl),
            ),
          )
        ],
      ),
      body: InkWell(
        mouseCursor: MouseCursor.defer,
        onTap: () {
          //changeColor
          setState(() {
            incrementIndex();
          });
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: primaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Title1(
                            'Click anywhere',
                            secondaryColor,
                          ),
                          Title1(
                            'on the screen',
                            secondaryColor,
                          ),
                          SubTitle(
                            '...and change the whole color theme dynamically',
                            textColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: secondaryColor,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Title2('A Flutter Project', accentColor),
                            SizedBox(
                              height: 30,
                            ),
                            //lib\assets\Antonio.png
                            Image.asset(
                              "../lib/assets/Antonio.png",
                              height: 250,
                              width: 250,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Title3(
                              'This is Antonio. The Mascotte for this project',
                              accentColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  SubTitle(this.subTitle, this.color);
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 200,
        right: 30,
      ),
      child: Text(
        subTitle,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 36,
          color: color,
        ),
      ),
    );
  }
}

class Title1 extends StatelessWidget {
  Title1(this.title, this.color);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
        left: 200,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 64,
          fontFamily: 'Montserrat',
          color: color,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class Title2 extends StatelessWidget {
  Title2(this.title, this.color);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 200,
        left: 30,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 48,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          color: color,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class Title3 extends StatelessWidget {
  Title3(this.title, this.color);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 200,
        left: 30,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          color: color,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
