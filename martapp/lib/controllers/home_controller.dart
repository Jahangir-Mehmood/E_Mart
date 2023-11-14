import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:martapp/consts/consts.dart';

class HomeController extends GetxController{
  var currentIndex = 0.obs;

  var navItems = [
    BottomNavigationBarItem(icon: Image.asset(icHome,width: 26),label: home),
    BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label: categories),
    BottomNavigationBarItem(icon: Image.asset(icCart,width: 26),label: cart),
    BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26),label: account)
  ];
  var navBody = [
    Container(color: Colors.red,),
    Container(color: Colors.yellow,),
    Container(color: Colors.blue,),
    Container(color: Colors.pinkAccent,),
  ];
}