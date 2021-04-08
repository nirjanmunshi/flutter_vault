import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_vault/constants.dart';
import 'package:flutter_vault/screen/components/drawer_item.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background of the application
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[300], Colors.blue[600]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),

          // navigation menu
          SafeArea(
            child: Container(
              width: 200.0,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://files.probharat.com/net-worth/images/brett-lee-98.jpg'),
                          radius: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Brett Lee',
                          style: GoogleFonts.quicksand(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: kMediumText),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        AppDrawerItem(text: 'Home', icon: Icons.home),
                        AppDrawerItem(text: 'Profile', icon: Icons.account_circle),
                        AppDrawerItem(text: 'Messages', icon: Icons.message),
                        AppDrawerItem(text: 'Settings', icon: Icons.settings),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: value,
            ),
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
            builder: (context, value, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * value)
                  ..rotateY((pi / 6) * value),
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                      '3D Animation',
                      style: GoogleFonts.quicksand(fontSize: kLargeText),
                    ),
                  ),
                  body: Container(
                    child: Center(
                      child: Text(
                        'Swipe right to see the effect',
                        style: GoogleFonts.quicksand(fontSize: kSmallText),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
            onTap: () {
              setState(() {
                value == 0 ? value = 1 : value = 0;
              });
            },
          )
        ],
      ),
    );
  }
}
