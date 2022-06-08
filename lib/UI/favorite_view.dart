import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/view_models/favorite_view_model.dart';

class FavoriteView extends StatelessWidget {
 const FavoriteView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<FavoriteViewModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => FavoriteViewModel(),
   );
 }
}