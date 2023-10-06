import 'package:flutter/material.dart';

class Modle {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const Modle({
   
    required this.title,
    required  this.subtitle ,
    required this.onTap,
  });
}
 final List<Modle> cardmodle = [
    Modle(title: "50% حسم", subtitle: "على اول 5 طلبيات", onTap: () {}),
    Modle(title: "50% حسم", subtitle: "على اول 5 طلبيات", onTap: () {}),
    Modle(title: "50% حسم", subtitle: "على اول 5 طلبيات", onTap: () {}),
  ];