// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:ui_design/ui_design.dart';
import 'package:visit_sn/UI/widgets/categorie.dart';
import 'package:visit_sn/app/app.locator.dart';
import 'package:visit_sn/services/firestore_service.dart';
import 'package:visit_sn/view_models/home_view_model.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/region_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNav(),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 120.0),
                    child: Text(
                      'Welcome to Senegal',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  verticalSpaceMedium,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Regions',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      verticalSpaceSmall,
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 200,
                          child: getRegion(),
                        ),
                      ),
                      verticalSpaceMedium,
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 9.0),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      verticalSpaceSmall,
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 200,
                          child: getCategorie(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getRegion() {
    final _firestoreService = locator<FirestoreService>();

    return StreamBuilder<QuerySnapshot>(
        stream: _firestoreService.regionCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            //return CircularProgressIndicator(color: Colors.black);
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(color: Colors.black);
          }
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: RegionItem(
                      image: snapshot.data!.docs[index]['image'],
                      title: snapshot.data!.docs[index]['name'],
                      onTap: () {},
                    ));
              });
        });
  }

  Widget? getCategorie() {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Categorie(path: 'assets/desert.png', name: 'Desert'),
      horizontalSpaceSmall,
      Categorie(path: 'assets/iles.png', name: 'Island'),
      horizontalSpaceSmall,
      Categorie(path: 'assets/marche.png', name: 'Market'),
      horizontalSpaceSmall,
      Categorie(path: 'assets/monuments.png', name: 'Monuments'),
      horizontalSpaceSmall,
      Categorie(path: 'assets/musee.png', name: 'Museum'),
      horizontalSpaceSmall,
      Categorie(path: 'assets/parcs.png', name: 'Parcs'),
      horizontalSpaceSmall,
      Categorie(path: 'assets/plages.png', name: 'Beach'),
    ]);
  }
}
