import 'package:flutter/material.dart';

import 'my_info_model.dart';

class MyInfoData with ChangeNotifier {
  MyInfoModel? _info;

  MyInfoModel? get info => _info;

  void updateName(String newName) {
    _info = MyInfoModel(name: newName);
    notifyListeners();
  }
}
