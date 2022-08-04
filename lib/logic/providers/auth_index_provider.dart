import 'package:change_app_package_name/change_app_package_name.dart';
import 'package:flutter/foundation.dart';

class AuthIndexProvider with ChangeNotifier {
  int index = 0;

  setIndex(int newIndex) {
    index = newIndex;
    print(index);
    notifyListeners();
  }
}
