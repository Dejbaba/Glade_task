import 'package:flutter/material.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/utils/utilities.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:glade_task/ui/widgets/crypto_action_option.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoCurrency extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: astronautBlue,
        ),
        title: Text("Crypto Currency",
            style: GoogleFonts.dmSans(
                height: 1,
                fontSize: width(context) / 24, fontWeight: FontWeight.w500, color: astronautBlue)),

      ),
      body: Padding(
        padding:  EdgeInsets.only(bottom: height(context) / 40, top: height(context) / 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            withdrawFundsButton(context),
            SizedBox(height: height(context) / 40,),
            bitcoinBalance(context),
            SizedBox(height: height(context) / 30,),
            cryptoActions(context),
            SizedBox(height: height(context) / 30,),
            recentActivityHeader(context),
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: height(context) / 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/first/file.png", height: height(context) / 15,),
                      SizedBox(height: 10,),
                      Text("No Transaction yet.",
                          style: GoogleFonts.dmSans(
                              height: 1,
                              fontSize: width(context) / 22, fontWeight: FontWeight.w600, color: astronautBlue)),
                      SizedBox(height: 5,),
                      Text("Initiate transaction to view record",
                          style: GoogleFonts.dmSans(
                              height: 1,
                              fontSize: width(context) / 30, fontWeight: FontWeight.w400, color: astronautBlue)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///withdraw funds button
  withdrawFundsButton(BuildContext context) => Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(right: width(context) / 15),
      child: OutlinedButton(
        child: Text("WITHDRAW FUNDS",
            style: GoogleFonts.dmSans(
                height: 1,
                fontSize: width(context) / 37, fontWeight: FontWeight.w900, color: astronautBlue)),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.transparent,
          side: BorderSide(color: turquoiseBlue, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        onPressed: () => print("withdraw funds"),
      ),
    ),
  );

  ///bitcoin balance summary
  bitcoinBalance(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: width(context) / 15),
    padding: EdgeInsets.only(left: width(context) / 30, right: width(context) / 20),
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/first/circle_patterns.png"), fit: BoxFit.cover
      ),
      color: cornflowerBlue,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.9],
          colors: [dodgerBlue, cornflowerBlue],
          tileMode: TileMode.repeated),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: width(context) / 23,
              backgroundColor: Colors.white.withOpacity(0.2),
              child: Image.asset("assets/images/first/bitcoin_2.png", height: height(context) / 40,),
            ),
            SizedBox(width: width(context) / 45,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width(context) / 60),
                  child: Text("1.00322BTC",
                      style: GoogleFonts.dmSans(
                          height: 1,
                          fontSize: width(context) / 17, fontWeight: FontWeight.w900, color: Colors.white)),
                ),
                SizedBox(height: 4,),
                Text("BITCOIN WALLET BALANCE",
                    style: GoogleFonts.dmSans(
                        fontSize: width(context) / 45,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ],
            ),
          ],),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: height(context) / 6.5,
                child: VerticalDivider(
                  color: Colors.white,
                  width: width(context) / 10,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BTC/USD",
                    style: GoogleFonts.dmSans(
                        height: 1,
                        fontSize: width(context) / 45, fontWeight: FontWeight.w500, color: Colors.white)),
                SizedBox(height: 4,),
                Text("\$${Utilities.formatAmount(amount: 39445.18)}",
                      style: GoogleFonts.dmSans(
                          fontSize: width(context) / 32,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
              ],
            ),

          ],
        ),

      ],
    ),
  );

  ///crypto actions
  cryptoActions(BuildContext context) => Padding(
    padding:  EdgeInsets.symmetric(horizontal: width(context) / 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CryptoActionOption(
          bgColor: tangerineOrange.withOpacity(0.2),
          imageAsset: "assets/images/first/paper_plane.png",
          label: "Send",
          onPressed: (){
            print("send");
          },
        ),
        CryptoActionOption(
          bgColor: aliceBlue,
          imageAsset: "assets/images/first/receive.png",
          label: "Receive",
          onPressed: (){
            print("Receive");
          },
        ),
        CryptoActionOption(
          bgColor: chalkPurple,
          imageAsset: "assets/images/first/buy_sell.png",
          label: "Buy/Sell",
          onPressed: (){
            print("Buy/Sell");
          },
        ),
        InkResponse(
          onTap: () =>  print("fund"),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: width(context) / 25, vertical: height(context) / 50),
                decoration: BoxDecoration(
                    color: hintGreen,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Icon(Icons.add_circle_outline_outlined, size: height(context) / 33, color: pastelGreen,),
              ),
              SizedBox(height: 6,),
              Text("Fund",
                  style: GoogleFonts.dmSans(
                      height: 1,
                      fontSize: width(context) / 30, fontWeight: FontWeight.w500, color: astronautBlue)),
            ],
          ),
        )
      ],
    ),
  );

  ///recent activity header/label
  recentActivityHeader(BuildContext context) => Container(
    color: aliceBlue,
    width: width(context),
    padding: EdgeInsets.symmetric(horizontal: width(context) / 15, vertical: height(context) / 40),
    child: Text("RECENT ACTIVITY",
        style: GoogleFonts.dmSans(
            height: 1,
            fontSize: width(context) / 35, fontWeight: FontWeight.w900, color: astronautBlue)),
  );


}