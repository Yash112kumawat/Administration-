import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/const.dart';

class Auth_Controller extends GetxController {
  var isloading = false.obs;
//textcontroller

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //loginmethod

  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

//signup

  Future<UserCredential?> singupMethod({email, password, context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
  //signout method

  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
