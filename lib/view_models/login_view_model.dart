import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:visit_sn/UI/base/authentication_view_model.dart';
import 'package:visit_sn/app/app.locator.dart';
import 'package:visit_sn/app/app.router.dart';
import 'package:visit_sn/UI/login/login_view.form.dart';


class LoginViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  LoginViewModel() : super(successRoute: Routes.startupView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.createAccountView);

  void navigateToForgotPwd() => navigationService.navigateTo(Routes.forgotPwdView);

  @override
  Future authentication() {
    // TODO: implement authentication
    throw UnimplementedError();
  }
}