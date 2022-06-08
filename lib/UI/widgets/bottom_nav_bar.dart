// ignore_for_file: prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visit_sn/app/app.locator.dart';
import 'package:visit_sn/app/app.router.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}
int currentindex = 0;

class _BottomNavState extends State<BottomNav> {
  final NavigationService _navigationService = locator<NavigationService>();

  

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
        selectedIndex: currentindex,
        backgroundColor: Colors.transparent,
        showElevation: false,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.pin_drop),
            title: Text('Senegal'),
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.map),
            title: Text('Regions'),
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: Text('favorite'),
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
          ),
        ],
        onItemSelected: (index) {
          setState(() {
            currentindex = index;
          });
          switch (currentindex) {
            case 0:
              _navigationService.clearStackAndShow(Routes.homeView);

              break;
            case 1:
              _navigationService.clearStackAndShow(Routes.senegalView);

              break;
            case 2:
              _navigationService.clearStackAndShow(Routes.regionView);

              break;
            case 3:
              _navigationService.clearStackAndShow(Routes.favoriteView);

              break;
            case 4:
              _navigationService.clearStackAndShow(Routes.profileView);

              break;
          }
        });
  }
}
