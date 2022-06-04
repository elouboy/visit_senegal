import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:visit_sn/UI/base/authentication_view_model.dart';
import 'package:visit_sn/app/app.locator.dart';
import 'package:visit_sn/app/app.router.dart';
import 'package:visit_sn/UI/create_account/create_account_view.form.dart';


class CreateAccountViewModel extends AuthenticationViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  CreateAccountViewModel() : super(successRoute: Routes.startupView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() async{
     var result = _firebaseAuthenticationService.createAccountWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );
      return result;

  }
  void navigateBack() => navigationService.back();

    void navigateLogin() =>
      navigationService.navigateTo(Routes.loginView);
  @override
  Future authentication() {
    // TODO: implement authentication
    throw UnimplementedError();
  }

}