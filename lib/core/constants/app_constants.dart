
import 'package:flutter/material.dart';
import 'package:glade_task/core/models/dummy_balance_detail.dart';
import 'package:glade_task/core/models/dummy_transaction.dart';
import 'package:intl/intl.dart';


//MediaQuery Width
double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

//MediaQuery Height
double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//get the shortest Side of the target device
double shortestSide(BuildContext context){
  return MediaQuery.of(context).size.shortestSide;
}

//check the type of target device
bool isMobileLayout(BuildContext context){
  return shortestSide(context) < 600;
}

//aspect ratio
double aspectRatio(BuildContext context){

  final double itemHeight = (height(context) - kToolbarHeight - 24) / 2;
  final double itemWidth = width(context) / 2;

  double aspectRatio = (itemWidth / itemHeight);

  return aspectRatio;
}


///dummy transaction data
List<DummyTransaction> dummyTransactions = [
  DummyTransaction(
    date: "Tuesday, March 31st, 2020",
    description: "Transfer to Naira Account",
    currency: "NGN",
    amount: 124000.44,
    transactionType: 0
  ), DummyTransaction(
    date: "Wednesday, July 31st, 2020",
    description: "West Minchester Bank approval for new tax policy",
    currency: "EUR",
    amount: 900.00,
      transactionType: 1
  ),DummyTransaction(
    date: "Tuesday, August 31st, 2020",
    description: "Purchase on Ebay plus shipping and other added fees",
    currency: "EUR",
    amount: 400.00,
      transactionType: 0
  ),DummyTransaction(
    date: "Tuesday, November 31st, 2020",
    description: "Netflix Subscription",
    currency: "USD",
    amount: 5.44,
      transactionType: 0
  ),DummyTransaction(
    date: "Wednesday, December 31st, 2020",
    description: "University of Calgary administration and acceptance fee",
    currency: "EUR",
    amount: 1200.00,
      transactionType: 1
  ),
];

///dummy account balance details
List<DummyBalanceDetail> dummyBalanceDetails = [
  DummyBalanceDetail(
    accountType: "USD ACCOUNT",
    amount: 5123.00,
    acctCode: 0
  ),
  DummyBalanceDetail(
      accountType: "NGN ACCOUNT",
      amount: 5000.00,
    acctCode: 1
  ),
];


