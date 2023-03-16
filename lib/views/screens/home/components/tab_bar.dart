// import 'package:flutter/material.dart';

// import '../../../../constant/screens.dart';

// class TabBarW extends StatelessWidget {
//   const TabBarW({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 5,
//       child: ListView(
//         children: [
//           Container(
//             height: 24,
//             alignment: Alignment.centerLeft,
//             child: TabBar(
//               labelStyle: secondaryTextStyle.copyWith(fontSize: 14),
//               isScrollable: true,
//               physics: const BouncingScrollPhysics(),
//               labelColor: Colors.white,
//               unselectedLabelColor: primaryColor,
//               indicator: BoxDecoration(
//                 color: primaryColor,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               tabs: const [
//                 Tab(text: 'All'),
//                 Tab(text: 'Fruits'),
//                 Tab(text: 'Groceries'),
//                 Tab(text: 'Meat'),
//                 Tab(text: 'Beverages'),
//               ],
//             ),
//           ),
//           const Expanded(
//             child: TabBarView(
//               children: [
//                 Center(child: Text("All")),
//                 Center(child: Text("Fruits")),
//                 Center(child: Text("Groceries")),
//                 Center(child: Text("Meat")),
//                 Center(child: Text("Beverages")),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
