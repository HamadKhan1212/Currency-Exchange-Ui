import 'package:currency_exchange/screen/user_side/screens/user_main_screen/bottom_nevbar_screen/history.dart';
import 'package:flutter/material.dart';

import '../../screen/user_side/screens/user_main_screen/bottom_nevbar_screen/home/home.dart';
import '../../screen/user_side/screens/user_main_screen/bottom_nevbar_screen/profile.dart';
import '../../screen/user_side/screens/user_main_screen/bottom_nevbar_screen/stats/stats.dart';

class Item {
  final String text;
  final String imageUrl;

  Item(this.text, this.imageUrl);
}

final List<Item> listViewItems = [
  Item('Add', 'images/john.png'),
  Item('John', 'images/john.png'),
  Item('Witch', 'images/witch.png'),
  Item('Alexa', 'images/alexa.png'),
  Item('Wik', 'images/wik.png'),
  Item('Sum', 'images/john.png'),
];

final List<Item> gridViewItem = [
  Item('Scan', 'images/qrScan.png'),
  Item('Pay', 'images/pay.png'),
  Item('TRANSFER', 'images/transfer.png'),
  Item('PREPAID', 'images/prepaid.png'),
];
final List<Widget> pages = <Widget>[
  const Home(),
  const Stats(),
  const HistoryScreen(),
  const Profile(),
];
final List listOfMonth = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
final List<String> rateList = [
  '\$50',
  '\$100',
  '\$200',
  '\$500',
  '\$1000',
];

class TableListItem {
  final bool isChecked;
  final String type;
  final String vendor;
  final String date;
  final String total;
  final String text;
  final String category;
  final String download;

  TableListItem(
      {required this.text,
      required this.isChecked,
      required this.date,
      required this.category,
      required this.download,
      required this.total,
      required this.type,
      required this.vendor});
}

final List<TableListItem> tableList = [
  TableListItem(
      text: '\$00.00\nAUD',
      isChecked: false,
      date: '10/08/2023',
      category: '',
      download: '',
      total: '\$17.02\nAUD',
      type: 'R',
      vendor: 'Simon Jhonson'),
  TableListItem(
      text: '\$3.00\nAUD',
      isChecked: false,
      date: '12/08/2023',
      category: '',
      download: '',
      total: '\$12.02\nAUD',
      type: 'R',
      vendor: 'Harris John Market'),
  TableListItem(
      text: '\$03.00\nAUD',
      isChecked: false,
      date: '14/09/2023',
      category: '',
      download: '',
      total: '\$18.02\nAUD',
      type: 'R',
      vendor: 'Ashad Colamb'),
  TableListItem(
      text: '\$03.00\nAUD',
      isChecked: false,
      date: '14/09/2023',
      category: '',
      download: '',
      total: '\$18.02\nAUD',
      type: 'R',
      vendor: 'Fik Market'),
  TableListItem(
      text: '\$03.00\nAUD',
      isChecked: false,
      date: '14/09/2023',
      category: '',
      download: '',
      total: '\$18.02\nAUD',
      type: 'R',
      vendor: 'Harris John Market'),
  TableListItem(
      text: '\$03.00\nAUD',
      isChecked: false,
      date: '14/09/2023',
      category: '',
      download: '',
      total: '\$18.02\nAUD',
      type: 'R',
      vendor: 'Charli Shod'),
];
