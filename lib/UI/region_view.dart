import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/view_models/region_view_model.dart';

class RegionView extends StatelessWidget {
 const RegionView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<RegionViewModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => RegionViewModel(),
   );
 }
}