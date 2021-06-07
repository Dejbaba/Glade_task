import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/models/dummy_balance_detail.dart';
import 'package:glade_task/core/utils/utilities.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountBalanceItem extends StatelessWidget {
  final DummyBalanceDetail dummyBalanceDetail;
  AccountBalanceItem({Key key, this.dummyBalanceDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(dummyBalanceDetail.accountType,
            style: GoogleFonts.mavenPro(
                fontSize: width(context) / 35,
                letterSpacing: 10,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.5))),
        Column(
          children: [
            dummyBalanceDetail.acctCode == 0
                ? Text(
                    "\$${Utilities.formatAmount(amount: dummyBalanceDetail.amount, addDecimal: false)}",
                    style: GoogleFonts.mavenPro(
                        fontSize: width(context) / 7,
                        letterSpacing: -5,
                        fontWeight: FontWeight.w600,
                        color: Colors.white))
                : RichText(
                    //textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: width(context) / 7,
                          letterSpacing: -5,
                         // height: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      children: [
                        TextSpan(
                          text: "₦",

                        ),
                        TextSpan(
                            text:
                                '${Utilities.formatAmount(amount: dummyBalanceDetail.amount, addDecimal: false)}',
                            style: GoogleFonts.mavenPro(
                                fontSize: width(context) / 7,
                                letterSpacing: -5,
                                height: 1,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ],
                    ),
                  ),
            Text("Available Balance",
                style: GoogleFonts.mavenPro(
                    fontSize: width(context) / 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ],
        ),
      ],
    );
  }
}
