import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoActionOption extends StatelessWidget{

  final Color bgColor;
  final String imageAsset;
  final String label;
  final VoidCallback onPressed;
  CryptoActionOption({Key key, this.bgColor, this.imageAsset, this.label, this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return InkResponse(
      onTap: () => onPressed,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: width(context) / 25, vertical: height(context) / 50),
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Image.asset(imageAsset, height: height(context) / 35,),
          ),
          SizedBox(height: 6,),
          Text(label,
              style: GoogleFonts.dmSans(
                  height: 1,
                  fontSize: width(context) / 30, fontWeight: FontWeight.w500, color: astronautBlue)),
        ],
      ),
    );
  }


}