import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/UI/widgets/bottom_nav_bar.dart';
import 'package:visit_sn/view_models/favorite_view_model.dart';

class FavoriteView extends StatelessWidget {
 const FavoriteView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<FavoriteViewModel>.reactive(
     builder: (context, model, child) => const Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNav(),
          body: Center(child: Text('Favorite'))),
     viewModelBuilder: () => FavoriteViewModel(),
   );
 }
}