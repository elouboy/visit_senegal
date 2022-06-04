import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visit_sn/UI/create_account/create_account_view.dart';
import 'package:visit_sn/UI/home_view.dart';
import 'package:visit_sn/UI/login/login_view.dart';
import 'package:visit_sn/UI/startup_view.dart';
import 'package:visit_sn/services/firestore_service.dart';
import 'package:visit_sn/services/user_service.dart';


@StackedApp(
  routes:[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: CreateAccountView),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    Singleton(classType: FirebaseAuthenticationService),
    LazySingleton(classType: FirestoreService),
    LazySingleton(classType: UserService),
  ]
)
class AppSetup{

}