// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:ui_design/ui_design.dart';
import 'package:visit_sn/UI/forgot_password/forgot_password_view.form.dart';
import 'package:visit_sn/view_models/forgot_password_view_model.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
])
class ForgotPwdView extends StatelessWidget with $ForgotPwdView {
  ForgotPwdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPwdViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
            onTap: model.navigateBack,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpaceMedium,
                Text(
                  'Reset password',
                  style: TextStyle(fontSize: 34),
                ),
                verticalSpaceSmall,
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: screenHeightPercentage(context, percentage: 0.7),
                    child: Text(
                      'Put your email to change your password',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF2C3F81),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                verticalSpaceRegular,
                verticalSpaceRegular,
                InputField(
                  placeholder: 'email',
                  controller: emailController,
                  primaryColor: Colors.white,
                  leading: const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
                verticalSpaceLarge,
                GestureDetector(
                  onTap: model.changeData,
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: model.isBusy
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : const Text(
                              'Change your password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ForgotPwdViewModel(),
    );
  }
}
