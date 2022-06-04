import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visit_sn/app/app.locator.dart';
import 'package:visit_sn/app/app.router.dart';
import 'package:visit_sn/services/user_service.dart';

class StartupViewModel extends BaseViewModel {
    final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    if (_userService.hasLoggedInUser) {
      await _userService.syncUserAccount();

      final currentUser = _userService.currentUser;

      _navigationService.replaceWith(Routes.homeView);
      // navigate to home view

    } else {
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}

