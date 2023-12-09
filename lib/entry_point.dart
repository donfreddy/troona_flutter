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

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:troona/ui/pages/home/home_page.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const Center(
        child: Text(
          'Deals',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      const Center(
        child: Text(
          'Chat',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      const Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: NeumorphicTheme.baseColor(context),
          systemNavigationBarIconBrightness: Brightness.dark
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTabTapped,
          // backgroundColor: NeumorphicTheme.baseColor(context),
          elevation: 10,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.homeOutline),
              activeIcon: Icon(EvaIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.musicOutline),
              activeIcon: Icon(EvaIcons.music),
              label: 'Song',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.listOutline),
              activeIcon: Icon(EvaIcons.list),
              label: 'Playlists',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.settingsOutline),
              activeIcon: Icon(EvaIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
