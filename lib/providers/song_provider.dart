/*
=============
Author: Don Freddy
Github: https://github.com/donfreddy
Website: https://donfreddy.com
=============
Application: Troona Music
Homepage: https://github.com/donfreddy/troona
License: https://github.com/donfreddy/troona/blob/main/LICENSE
Copyright: © 2023, Don Freddy. All rights reserved.
=============
*/

import 'package:flutter/material.dart';

class SongProvider extends ChangeNotifier {
  bool isLoading = true;
  bool hasError = false;

  SongProvider() {
    _init();
  }

  Future<void> _init() async {
    try {
      //
    } on Exception {
      hasError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

// ---------------- Theme Mode ----------------

// ---------------- Accent Color ---------
}
