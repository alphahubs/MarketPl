import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:screenshot/screenshot.dart';

import '../../constant/screens.dart';

class MainScreen extends StatefulWidget {
  static String route = 'main_screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final controller = ScreenshotController();

  int selectedIndex = 0;
  final List<Widget> _screens = [
    const Home(),
    const Favorite(),
    const Cart(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: controller,
      child: Scaffold(
        // bottomNavigationBar: const BottomNav(),
        body: Padding(
          padding: primaryPadding,
          child: SafeArea(
            child: _screens[selectedIndex],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 85,
          child: BottomNavigationBar(
            elevation: 0,
            fixedColor: primaryColor,
            unselectedItemColor: Colors.grey,
            currentIndex: selectedIndex,
            selectedFontSize: 12,
            onTap: (value) async {
              setState(() {
                selectedIndex = value;
              });

              // print('Screenshot made successfully');
              // Future.delayed(const Duration(seconds: 2), () async {
              //   await controller.captureAndSave('screenshots');
              // });
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
        ),
      ),
    );
  }
}

// class BottomNav extends StatelessWidget {
//   const BottomNav({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       elevation: 0,
//       color: primaryColor,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: const [
//                 Icon(Iconsax.home),
//                 Text('Home'),
//               ],
//             ),
//             Column(
//               children: const [
//                 Icon(Iconsax.heart),
//                 Text('Favorite'),
//               ],
//             ),
//             Column(
//               children: const [
//                 Icon(Iconsax.shopping_cart),
//                 Text('Cart'),
//               ],
//             ),
//             Column(
//               children: const [
//                 Icon(Iconsax.user1),
//                 Text('Profile'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
