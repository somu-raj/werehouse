import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:werehouse/Utils/utils.dart';
import '../../Api Services/api_services.dart';

class LoginController extends GetxController {

  RxBool isLoading = false.obs;
  RxInt selectedIndex = 0.obs;

  // final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final forgetPassEmailController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  // Reactive variable for password visibility toggle
  var passwordVisible = false.obs;
  get finalResult => null;

  ///handle password visibility
  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }


 /* Future<void> loginUser(String email, String password) async {
    var headers = {
      'Cookie': 'ci_session=vtv6divn91949d8h4l9sqmqtsd136t5q'
    };
    var request = http.MultipartRequest('POST', Uri.parse("${Endpoints.baseUrl}${Endpoints.Login}"));
  // print("Email===========${email.toString()}");
  // print("Email===========Password ${password.toString()}");

    request.fields.addAll({
      'login_id': "${email.toString()}",
      'password': "${password.toString()}"
    });

    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var result = await response.stream.bytesToString();
      var finalResult = jsonDecode(result);

      if (finalResult['status'] == 'success') {
        // Extract user data
        String userId = finalResult['user']['id'].toString(); // Ensure it's a string
        String otp = finalResult['user']['otp'].toString();   // Ensure it's a string
        String email = finalResult['user']['email'];
        String username = finalResult['user']['username'] ?? '';  // Empty string if username is null

        // Save data to SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('userid', userId);
        prefs.setString('otp', otp);
        prefs.setString('email', email);
        prefs.setString('username', username);

        // Show login successful message
        Get.snackbar('Login Successful', finalResult['message']);

        // Navigate to the next screen after a successful login
        Get.to(() => const HomeScreenEngineer()); // Replace with your next screen
      } else {
        // Handle any unexpected status
        String errorMessage = finalResult['message'] ?? 'An error occurred';
        Get.snackbar('Login Failed', errorMessage);
      }
      }
    else {
      Get.snackbar('Network Error', 'Failed to log in. Please check your connection and try again.');

      return null;
    }
  }*/



  ///handle verify email and send confirmation code method and get back to the login screen
  Future<bool> verifyEmailAndSendCode() async {
    if (forgetPassEmailController.text.isEmpty) {
      Utils.mySnackBar(title: "Email Not Found",
          msg: 'Please Enter email id',
          maxWidth: 200);
      return false;
    } else {
      isLoading.value = true;
      // await apiRequests.userLogin(
      //   mobileController.text,
      //   passwordController.text,
      //   audioController,
      // );
      Get.back();
      isLoading.value = false;
      return true;
    }
  }

}
