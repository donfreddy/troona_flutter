import 'dart:io';

import 'package:flutter/material.dart';

dynamic main() {
  final rootDir = Directory.current;
  final commitFile = File('${rootDir.path}/.git/COMMIT_EDITMSG');
  final commitMessage = commitFile.readAsStringSync();

  final regExp = RegExp(r'(fix|feat|chore|ci|pref||refactor|docs|style|test)(\([a-z]+\))?:.+');

  final valid = regExp.hasMatch(commitMessage);
  if (!valid) {
    debugPrint('''
  ❌ Commit message error: The commit message must follow the standardized structure as follows:

    <type>[optional scope]: <description>

  - type: the type of the change, can be one of the following: fix, feat, chore, refactor, docs, etc...
  - scope (optional): the scope of the change, should be enclosed in parentheses. Example: (auth)
  - description: a brief description of the change

  Examples of valid commit messages:

    feat: Import Playlists from Spotify
    docs: correct spelling of CHANGELOG
    feat(theme): Dark mode support 

  Please correct your commit message and try again.
        ''');
    exitCode = 1;
  } else {
    debugPrint('''✅ Valid commit message!''');
  }
}
