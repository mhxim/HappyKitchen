import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const pageTitle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w900, fontSize: 40.0);
  static const subTitle = TextStyle(
      color: Color(0xff505050), fontWeight: FontWeight.w600, fontSize: 25.0);
  static const homeUsername = TextStyle(
      color: Color(0xff505050), fontWeight: FontWeight.w900, fontSize: 25.0);
  static const pageTitleMargin = EdgeInsets.only(bottom: 15.0);
  static const defaultMargin = EdgeInsets.only(bottom: 10.0);
  static const defaultBox = BoxDecoration(
      color: Color(0xffEFEFEF),
      borderRadius: BorderRadius.all(Radius.circular(15.0)));
  static const itemBox = BoxDecoration(
      color: Color(0xffDFDFDF),
      borderRadius: BorderRadius.all(Radius.circular(15.0)));
  static const mainButtonTitle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20.0);
  static const mainButtonMargin = EdgeInsets.only(top: 200.0, left: 25.0);
  static const routeText = TextStyle(
      color: Color(0xff505050), fontWeight: FontWeight.w800, fontSize: 15.0);
  static const routeMargin = EdgeInsets.only(bottom: 2.5);
  static const statisticsTitle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w800, fontSize: 17.5);
  static const statisticsText = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15.0);
  static const navTitle = TextStyle(
      color: Colors.white, fontWeight: FontWeight.w800, fontSize: 15.0);
  static const storageBoxTitle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15.0);
  static const tableTitle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w800, fontSize: 12.5);
  static const tableText = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12.5);
  static const settingsText =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20);
  static const defaultSubColor = Color(0xffEFEFEF);
  static const highlightColor = Color(0xff6C63FF);
}
