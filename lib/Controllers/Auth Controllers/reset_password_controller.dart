import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResetPasswordController extends GetxController {

  var newPasswordVisible = false.obs;
  var confirmPasswordVisible = false.obs;
  var isLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  ///on controller close
  @override
  void onClose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  ///handle password visibility
  void togglePasswordVisibility() {

    newPasswordVisible.value = !newPasswordVisible.value;
  }

  ///handle confirm password visibility
  void toggleConfirmPasswordVisibility() {
    confirmPasswordVisible.value = !confirmPasswordVisible.value;
  }

  /// register user method on Sign up
  Future<void> verifyAccount() async {
    if(formKey.currentState!.validate()){

    }
  }

}
