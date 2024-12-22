import 'dart:async';

import 'package:flutter/material.dart';

// ! Ek hi class mai more than function create and other place call function name  esse single ChangeNotifyProvider se bhi kar sakte hai

// class AppState extends ChangeNotifier {
//   //! Question 1.
//   int temp = 332;

// //! Question 2.
//   int moy = 0;p
//   updatetemp(int moy) {
//     this.moy = moy;
//     notifyListeners(); 
//   }

//   //? Timer function
//   int start = 0;
//   updateStart(int start) {
//     this.start = start;
//     notifyListeners();
//   }

//   void getTimer() {
//     Timer.periodic(Duration(seconds: 1), (timer) {
//       updateStart(timer.tick);
//     });
//   }

// //! Question 3.

//   //? Provider with patel
//   String name = "Code with Patel";
//   void updateName(String name) {
//     this.name = name;
//     notifyListeners();
//   }

//   Future<void> getName(String name) async {
//     Future.delayed(Duration(seconds: 5), () {
//       updateName(name);
//     });
//   }
// }
