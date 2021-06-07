import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/models/dummy_transaction.dart';
import 'package:glade_task/core/utils/utilities.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentActivityItem extends StatelessWidget{

  final DummyTransaction dummyTransaction;
  RecentActivityItem({Key key, this.dummyTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(
        left: width(context) / 15,
        right: width(context) / 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dummyTransaction.date,
                    style: GoogleFonts.raleway(
                        fontSize: width(context) / 35, fontWeight: FontWeight.w600, color: lavenderPurple)),
                Text(dummyTransaction.description,
                  style: GoogleFonts.mavenPro(
                      fontSize: width(context) / 28, fontWeight: FontWeight.w700, color: lavenderPurple),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,),

              ],
            ),
          ),
          SizedBox(width: width(context) / 8,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(dummyTransaction.currency,
                  style: GoogleFonts.raleway(
                      fontSize: width(context) / 25, fontWeight: FontWeight.w800, color: dummyTransaction.transactionType == 0 ? sinYellow : affairPurple)),
              Text("${Utilities.formatAmount(amount: dummyTransaction.amount)}",
                  style: GoogleFonts.raleway(
                      fontSize: width(context) / 28, fontWeight: FontWeight.w800, color: dummyTransaction.transactionType == 0 ? sinYellow : affairPurple)),
            ],
          ),

        ],
      ),
    );
  }


}