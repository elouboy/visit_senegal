import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:visit_sn/UI/base/authentication_view_model.dart';
import 'package:visit_sn/app/app.locator.dart';
import 'package:visit_sn/app/app.router.dart';
import 'package:visit_sn/UI/forgot_password/forgot_password_view.form.dart';


class ForgotPwdViewModel extends AuthenticationViewModel {
final FirebaseAuthenticationService _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  ForgotPwdViewModel() : super(successRoute: Routes.loginView);
  @override
  Future authentication() => _firebaseAuthenticationService.sendResetPasswordLink(emailValue!);

  void navigateBack() => navigationService.back();

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() {
    // TODO: implement runAuthentication
    throw UnimplementedError();
  }


}