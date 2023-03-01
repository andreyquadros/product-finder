import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:get/get.dart';

import 'Controllers/HomeController.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      Get.snackbar('Login', 'Usuário logado com sucesso',
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          snackStyle: SnackStyle.FLOATING);
      Get.find<HomeController>().goToPainelPage();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar('Login', 'Usuário não encontrado',
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            snackStyle: SnackStyle.FLOATING);
      } else if (e.code == 'wrong-password') {
        Get.snackbar('Login', 'Senha incorreta',
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            snackStyle: SnackStyle.FLOATING);
      } else {
        Get.snackbar('Login', 'Erro ao fazer login: ${e.message}',
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            snackStyle: SnackStyle.FLOATING);
      }
    } catch (e) {
      Get.snackbar('Login', 'Erro ao fazer login: $e',
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          snackStyle: SnackStyle.FLOATING);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Scaffold(
            body: Stack(
              children: [
                BlurHash(
                    hash: 'L3Oso#%M00o#NGofoffQD%A3t7fQ',
                    imageFit: BoxFit.cover),
                Container(color: Colors.blueAccent.withOpacity(1.0)),
                Center(
                  child: SizedBox(
                    width: 400,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Login',
                                style: Theme.of(context).textTheme.headline6),
                            SizedBox(height: 16),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'E-mail',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person_outline),
                              ),
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              obscureText: true,
                              controller: _passwordController,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.lock_outline),
                              ),
                            ),
                            SizedBox(height: 16),
                            ElevatedButton(
                                child: Text('Entrar'),
                                onPressed: () {
                                  _signInWithEmailAndPassword();
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
