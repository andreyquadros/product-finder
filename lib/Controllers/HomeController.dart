import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:untitled3/painel_page.dart';

import '../add_company_page.dart';
import '../login_page.dart';

class HomeController extends GetxController {
  final _currentPage = 0.obs;
  final _userEmail = ''.obs;

  int get currentPage => _currentPage.value;
  String get userEmail => _userEmail.value;

  @override
  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        _userEmail.value = user.email!;
      }
    });
  }

  void goToLoginPage() {
    Get.to(LoginPage());
  }

  void goToPainelPage() {
    Get.to(PainelPage());
  }

  void goToPage(int page) {
    _currentPage.value = page;
    Get.back();
    switch (page) {
      case 1:
        Get.to(CadastroEmpresaPage());
    }
  }
}
