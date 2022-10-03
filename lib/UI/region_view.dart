import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/UI/widgets/bottom_nav_bar.dart';
import 'package:visit_sn/view_models/region_view_model.dart';

class RegionView extends StatelessWidget {
 const RegionView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<RegionViewModel>.reactive(
     builder: (context, model, child) => const Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNav(),
          body: Center(child: Text('Region'))),
     viewModelBuilder: () => RegionViewModel(),
   );
 }
}