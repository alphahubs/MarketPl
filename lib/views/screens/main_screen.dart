import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/constant/colors.dart';
import 'package:marketplace/constant/sizing.dart';
import 'package:marketplace/views/screens/cart/cart.dart';
import 'package:marketplace/views/screens/favorite/favorite.dart';
import 'package:marketplace/views/screens/home/home.dart';
import 'package:marketplace/views/screens/profile/profile.dart';

class MainScreen extends StatefulWidget {
  static String route = 'main_screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final List<Widget> _screens = [
    const Home(),
    const Favorite(),
    const Cart(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: primaryPadding,
        child: SafeArea(
          child: _screens[selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        selectedFontSize: 12,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Iconsax.home,
              )),
          BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(
                Iconsax.heart,
              )),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Iconsax.shopping_cart,
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Iconsax.user,
              )),
        ],
      ),
    );
  }
}
