import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class AppDrawerItem extends StatelessWidget {
  final String text;
  final IconData icon;

  AppDrawerItem({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: GoogleFonts.quicksand(fontSize: kSmallText, color: Colors.white),
      ),
    );
  }
}
