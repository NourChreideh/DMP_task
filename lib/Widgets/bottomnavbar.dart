
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:testproject/Utility/global_color.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return 
     
      CustomLineIndicatorBottomNavbar(
        selectedColor: GlobalColors.mainColor,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        unselectedIconSize: 25,
        selectedIconSize: 25,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: false,
    
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'الرئيسية',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'المفضلة',
            icon: Icons.favorite_border,
          ),
          CustomBottomBarItems(
              label: 'الخريطة',
               icon: Icons.location_on_rounded),
          CustomBottomBarItems(
            label: 'القائمة',
            icon: Icons.list_alt,
          ),
          CustomBottomBarItems(
            label: 'الاعدادات',
            icon: Icons.settings,
          ),
        ]);
   
}}