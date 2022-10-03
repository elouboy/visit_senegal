import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visit_sn/UI/widgets/bottom_nav_bar.dart';
import 'package:visit_sn/view_models/profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNav(),
          body: Center(child: Text('Profile'))),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
