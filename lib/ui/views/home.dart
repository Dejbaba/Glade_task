import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/utils/utilities.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:glade_task/ui/views/crypto_currency.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: height(context) / 50, left: width(context) / 15, right: width(context) / 15, bottom: height(context) / 20),
      children: [
        nameAndBell(context),
        SizedBox(
          height: height(context) / 20,
        ),
        acctBalanceSummary(context),
        SizedBox(
          height: height(context) / 32,
        ),
        addBusinessAccount(context),
        SizedBox(
          height: height(context) / 32,
        ),
        gridViewActions(context)
      ],
    );
  }

  ///name and notification bell
  nameAndBell(BuildContext context) => Padding(
        padding: EdgeInsets.only(left: width(context) / 50),
        child: Row(
          children: [
            CircleAvatar(
              radius: width(context) / 20,
              backgroundColor: turquoiseBlue.withOpacity(0.3),
              child: CircleAvatar(
                radius: width(context) / 25,
                backgroundColor: turquoiseBlue,
                child: Text(
                  "SA",
                  style: TextStyle(
                    fontFamily: "NeurialGrotesk",
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: width(context) / 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Skadgate Innovations",
                    style: GoogleFonts.dmSans(
                        fontSize: width(context) / 23,
                        fontWeight: FontWeight.w900,
                        color: astronautBlue)),
                Text("99201122334 - Providus Bank",
                    style: GoogleFonts.dmSans(
                        fontSize: width(context) / 32,
                        fontWeight: FontWeight.w600,
                        color: astronautBlue)),
              ],
            ),
            Spacer(),
            Icon(
              CupertinoIcons.bell,
              size: width(context) / 18,
              color: astronautBlue,
            )
          ],
        ),
      );

  ///account balance summary
  acctBalanceSummary(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(vertical: height(context) / 25, horizontal: width(context) / 10),
        decoration: BoxDecoration(
            color: mabelBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Text("Available Balance",
                style: GoogleFonts.dmSans(
                    fontSize: width(context) / 30,
                    fontWeight: FontWeight.w700,
                    color: astronautBlue)),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    fontSize: width(context) / 18,
                    fontWeight: FontWeight.w900,
                    color: astronautBlue),
                children: [
                  TextSpan(
                    text: "₦",
                  ),
                  TextSpan(
                      text: '${Utilities.formatAmount(amount: 675000.01)}',
                      style: GoogleFonts.dmSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: astronautBlue)),
                ],
              ),
            ),
          ],
        ),
      );

  ///add a business account
  addBusinessAccount(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Add a Business Account",
              style: GoogleFonts.dmSans(
                  fontSize: width(context) / 30, fontWeight: FontWeight.w900, color: edenBlue)),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: InkResponse(
                onTap: () => print("add new business account"),
                child: Icon(
                  Icons.add_circle_outline_outlined,
                  size: width(context) / 20,
                  color: turquoiseBlue,
                )),
          )
        ],
      );

  ///grid-view action options
  gridViewActions(BuildContext context) => GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      childAspectRatio: aspectRatio(context) / 0.7,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        InkResponse(
          onTap: () => print("fund transfer"),
          child: Container(
            width: width(context),
            decoration: BoxDecoration(
                color: fairPink,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: EdgeInsets.symmetric(horizontal: width(context) / 20, vertical: height(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height(context) / 15,
                  width: width(context) / 8,
                  child: Image.asset("assets/images/first/account_statement.png",
                    color: tangerineOrange,),
                ),
                SizedBox(height: height(context) / 40,),
                Text("Fund\ntransfer",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 25, fontWeight: FontWeight.w900, color: astronautBlue)),
                SizedBox(height: height(context) / 80,),
                Text("Send Funds to any \nBank Account.",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 30, fontWeight: FontWeight.w600, color: astronautBlue)),
              ],
            ),
          ),
        ),
        InkResponse(
          onTap: ()=> print("digital invoicing"),
          child: Container(
            width: width(context),
            decoration: BoxDecoration(
                color: aliceBlue,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: EdgeInsets.symmetric(horizontal: width(context) / 20, vertical: height(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height(context) / 15,
                  width: width(context) / 8,
                  child: Image.asset("assets/images/first/account_statement.png",
                    color: anakiwaBlue,),
                ),
                SizedBox(height: height(context) / 40,),
                Text("Digital\nInvoicing",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 25, fontWeight: FontWeight.w900, color: astronautBlue)),
                SizedBox(height: height(context) / 80,),
                Text("Send Funds to any \nBank Account.",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 30, fontWeight: FontWeight.w600, color: astronautBlue)),
              ],
            ),
          ),
        ),
        InkResponse(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CryptoCurrency(),
            ),
          ),
          child: Container(
            width: width(context),
            decoration: BoxDecoration(
                color: chalkPurple,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: EdgeInsets.symmetric(horizontal: width(context) / 20, vertical: height(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height(context) / 15,
                  width: width(context) / 8,
                  child: Image.asset("assets/images/first/bitcoin.png"),
                ),
                SizedBox(height: height(context) / 40,),
                Text("Crypto\ncurrency",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 25, fontWeight: FontWeight.w900, color: astronautBlue)),
                SizedBox(height: height(context) / 80,),
                Text("Send Funds to any \nBank Account.",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 30, fontWeight: FontWeight.w600, color: astronautBlue)),
              ],
            ),
          ),
        ),
        InkResponse(
          onTap: ()=> print("account statement"),
          child: Container(
            width: width(context),
            decoration: BoxDecoration(
                color: hintGreen,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: EdgeInsets.symmetric(horizontal: width(context) / 20, vertical: height(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height(context) / 15,
                  width: width(context) / 8,
                  child: Image.asset("assets/images/first/account_statement.png",
                    color: madangGreen,),
                ),
                SizedBox(height: height(context) / 40,),
                Text("Account\nstatement",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 25, fontWeight: FontWeight.w900, color: astronautBlue)),
                SizedBox(height: height(context) / 80,),
                Text("Send Funds to any \nBank Account.",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 30, fontWeight: FontWeight.w600, color: astronautBlue)),
              ],
            ),
          ),
        ),
      ]);

}
