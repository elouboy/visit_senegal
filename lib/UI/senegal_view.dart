import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/view_models/senegal_view_model.dart';

class SenegalView extends StatelessWidget {
 const SenegalView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<SenegalViewModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => SenegalViewModel(),
   );
 }
}