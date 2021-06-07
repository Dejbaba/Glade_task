import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:glade_task/core/constants/app_constants.dart';
import 'package:glade_task/core/utils/utilities.dart';
import 'package:glade_task/ui/shared/colors.dart';
import 'package:glade_task/ui/widgets/listview_items/account_balance_item.dart';
import 'package:glade_task/ui/widgets/listview_items/recent_activity_item.dart';
import 'package:google_fonts/google_fonts.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: width(context),
      decoration: BoxDecoration(
          color: affairPurple,
          image: DecorationImage(
              image: AssetImage("assets/images/first/circle_patterns.png"), fit: BoxFit.cover
          )
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userDetails(context),
            SizedBox(height: height(context) / 30,),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: height(context) / 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    accountDetails(context),
                    SizedBox(height: height(context) / 20,),
                    recentActivityHeader(context),
                    SizedBox(height: height(context) / 40,),
                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                          bottom: height(context) / 20,
                        ),
                        itemCount: dummyTransactions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RecentActivityItem(
                            dummyTransaction: dummyTransactions[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                              height: height(context) / 20,
                              color: doveGrey,
                              thickness: 0.1,
                            );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ///user details
  userDetails(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: width(context) / 20),
    child: Row(
      children: [
        CircleAvatar(
          radius: width(context) / 15,
          backgroundColor: Colors.white.withOpacity(0.3),
          child: CircleAvatar(
            radius: width(context) / 19,
            backgroundImage: ExactAssetImage(
                "assets/images/second/sample_image.jpg"),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.mavenPro(
                    fontSize: width(context) / 18,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    color: Colors.white),
                children: [
                  TextSpan(
                    text: "Christopher ",
                  ),
                  TextSpan(
                      text: 'Ntuk',
                      style: GoogleFonts.mavenPro(
                          fontWeight: FontWeight.bold,
                          color: sinYellow)),
                ],
              ),
            ),
            Text("Welcome back @devchris",
                style: GoogleFonts.raleway(
                    fontSize: width(context) / 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ],
        ),
      ],
    ),
  );

  ///account balance details
  accountDetails(BuildContext context) => Container(
    height: height(context) / 5.5,
    width: width(context),
    margin: EdgeInsets.symmetric(horizontal: width(context) / 30),
    padding: EdgeInsets.symmetric(
        horizontal: width(context) / 30,
        vertical: height(context) / 40
    ),
    decoration: BoxDecoration(
        color: affairPurple,
        image: DecorationImage(
            image: AssetImage("assets/images/first/circle_patterns.png"), fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Theme(
      data: ThemeData(primaryColor: sinYellow),
      child: Swiper(
        itemCount: dummyBalanceDetails.length,
        curve: Curves.linearToEaseOut,
        itemHeight: height(context),
        itemWidth: width(context),
        control:  new SwiperControl(
          color: sinYellow,
          size: height(context) / 45,
          disableColor: Colors.red,
        ),
        itemBuilder:
            (BuildContext context, int index) {
          return AccountBalanceItem(
            dummyBalanceDetail: dummyBalanceDetails[index],
          );
        },
      ),
    ),
  );

  ///recent activity header
  recentActivityHeader(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(horizontal: width(context) / 20,
        vertical: height(context) / 80),
    color: affairPurple.withOpacity(0.1),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("RECENT ACTIVITY",
            style: GoogleFonts.mavenPro(
                fontSize: width(context) / 25, fontWeight: FontWeight.w600, color: affairPurple)),
        InkResponse(
          onTap: ()=> print("see more"),
          child: Text("SEE MORE",
              style: GoogleFonts.mavenPro(
                  fontSize: width(context) / 35, fontWeight: FontWeight.w900, color: affairPurple)),
        ),
      ],
    ),
  );

}
