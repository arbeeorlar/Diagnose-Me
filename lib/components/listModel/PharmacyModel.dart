import 'package:flutter/material.dart';

class UiMenuModel {
  String title;
  // AssetImage icon;
  String subtitle;
  // Color itemColor;

  UiMenuModel({this.title,  this.subtitle, });
// UiMenuModel({this.icon, this.itemColor});
}

List<UiMenuModel> menuItem = [
  UiMenuModel(
      title: "45 Saka Tinubu Street, Victoria Island, Lagos",
      // icon: AssetImage("assets/images/Abuja.jpg"),
      subtitle: "MedPlus Pharmacy"),
  // itemColor: Colors.white),
  UiMenuModel(
    title: "284B Ajose Adeogun Street, Victoria Island",

    subtitle: "HealthPlus Pharmacy",),

  UiMenuModel(
    title: "27 Damole Street, Victoria Island, Lagos",

    subtitle: "Tommy - Dee Ventures",),
  UiMenuModel(
    title: "Plot 19, Kodesho Street, Adeniyi Jones, lkeja",

    subtitle: "Juli Pharmacy and Stores",),
  UiMenuModel(
    title: "4a Ajidagan Street, Gbagada Phase 1, Lagos",

    subtitle: "Wellrose Pharmacy",),
  UiMenuModel(
    title: "No 11, Lateef Jakande Road, Agidingbi Ikeja",

    subtitle: "Chilpharm Pharmacy",),
  UiMenuModel(
    title: "Along Adeniyi Jones Avenue, lkeja",

    subtitle: "Crad Pharmacy and Supermarket",),
  UiMenuModel(
      title: "Iyana Iba, Oba Daudu Street, Ojo, Lagos",

      subtitle: "Goche Pharmacy	"),
  UiMenuModel(
    title: "No 72 Adeniyi Jones Avenue, Ikeja, Lagos",

    subtitle: "Bolar Pharmacy And Stores",),
];