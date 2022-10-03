// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:ui_design/ui_design.dart';
import 'package:visit_sn/UI/widgets/bottom_nav_bar.dart';
import 'package:visit_sn/view_models/senegal_view_model.dart';

class SenegalView extends StatelessWidget {
  const SenegalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SenegalViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNav(),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ],
                  ),
                  child: Hero(
                    tag: AssetImage('assets/senegal.png'),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                          image: AssetImage('assets/senegal.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Text(
                    'Senegal',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.2),
                  ),
                ),
              ],
            ),
            verticalSpaceMedium,
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Capital:',
                            style: TextStyle(fontWeight: FontWeight.w900)),
                        Text(
                          ' Dakar',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      children: const [
                        Text('Area:' ,style: TextStyle(fontWeight: FontWeight.w900)),
                        Text(
                          '  196722 KM2',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      children: const [
                        Text('Time zone:' , style: TextStyle(fontWeight: FontWeight.w900)),
                        Text(
                          ' UTC',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      children: const [
                        Text('0fficials languages:', style: TextStyle(fontWeight: FontWeight.w900)),
                        Text(
                          '  Wolof, french',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      children: const [
                        Text('Population:', style: TextStyle(fontWeight: FontWeight.w900)),
                        Text(
                          ' 15854323',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      children: const [
                        Text('Currency:' ,style: TextStyle(fontWeight: FontWeight.w900)),
                        Text(
                          '  West African CFA',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
      viewModelBuilder: () => SenegalViewModel(),
    );
  }
}
