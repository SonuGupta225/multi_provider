import 'package:flutter/cupertino.dart';

class NameProvider extends ChangeNotifier {
  //? Provider with patel
  String name = "Code with Patel";
  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(Duration(seconds: 5), () {
      updateName(name);
    });
  }
}
