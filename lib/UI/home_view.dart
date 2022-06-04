// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/view_models/home_view_model.dart';

class HomeView extends StatelessWidget {
 const HomeView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<HomeViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
       backgroundColor: Colors.white,
       body: Container(),
     ),
     viewModelBuilder: () => HomeViewModel(),
   );
 }
}