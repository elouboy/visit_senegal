// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:ui_design/ui_design.dart';
import 'package:visit_sn/UI/create_account/create_account_view.form.dart';
import 'package:visit_sn/view_models/create_account_view_model.dart';


@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class CreateAccountView extends StatelessWidget with $CreateAccountView {
  CreateAccountView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<CreateAccountViewModel>.reactive(
     onModelReady: (model) => listenToFormUpdated(model),
     builder: (context, model, child) => Scaffold(
       backgroundColor: Colors.white,
       body: SingleChildScrollView(
         child: Column(
           children: [
             verticalSpaceLarge,
                Text(
                  'Create Account',
                  style: TextStyle(fontSize: 34),
                ),
                verticalSpaceRegular,
                InputField(
                    controller: emailController,
                    primaryColor: Colors.black,
                    leading: Icon(Icons.email, color: Colors.black)),
                verticalSpaceMedium,
                InputField(
                    controller: passwordController,
                    primaryColor: Colors.black,
                    password: true,
                    leading: Icon(Icons.lock, color: Colors.black)),
                verticalSpaceSmall,
                verticalSpaceLarge,
                if (model.validationMessage != null)
                  Text(
                    model.validationMessage!,
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                if (model.validationMessage != null) verticalSpaceRegular,
                GestureDetector(
                  onTap: model.saveData,
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: model.isBusy
                          ? CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : Text(
                              'Create Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )),
                ),
                verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('have an account?'),
                  horizontalSpaceTiny,
                  GestureDetector(
                    onTap: model.navigateLogin,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF2D3B7D),
                      ),
                    ),
                  ),
                ],
              ),
           ],
         ),
       ),
     ),
     viewModelBuilder: () => CreateAccountViewModel(),
   );
 }
}