import 'package:color_schifter/components/colors.dart';
import 'package:color_schifter/components/constants.dart';
import 'package:color_schifter/components/logic/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
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
        //titleSpacing: 0.0,
        title: Text(
          'ColorShifter',
          style: TextStyle(
            color: textColor,
            fontFamily: 'Sriracha',
            fontSize: 24,
          ),
        ),
        actions: [
          FlatButton.icon(
            icon: CIcon(
              IconMoon.icon_github,
              color: textColor,
              size: 24,
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
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Click the button and change the Color Palette',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        color: secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: accentColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        child: Text(
                          'CLICK ME',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 36,
                            color: textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          incrementIndex();
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Got questions?',
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Send me an email at anobileloris@gmail.com',
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: secondaryColor,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'A Flutter Project',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        color: accentColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'This is Antonio',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'The Mascotte for this project',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            "../lib/assets/Antonio.png",
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
