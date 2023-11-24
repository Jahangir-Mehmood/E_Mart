import 'package:get/get.dart';
import 'package:martapp/consts/consts.dart';
import 'package:martapp/views/account_screen/account_screen.dart';
import 'package:martapp/views/cart_screen/cart_screen.dart';
import 'package:martapp/views/categories_screen/categories_screen.dart';
import 'package:martapp/views/home_screen/home_screen.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  var navItems = [
    BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
    BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26), label: categories),
    BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
    BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26), label: account)
  ];
  var navBody = [const HomeScreen(), const CategoriesScreen(), const CartScreen(), const AccountScreen()];
}
