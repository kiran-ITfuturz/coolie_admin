import 'dart:convert';

import 'package:flutter/material.dart';

import '../api constants/api_manager.dart';
import '../api constants/network_constants.dart';
import '../services/app_toasting.dart';

class AuthenticationRepo {
  Future<AuthenticationRepo> init() async => this;

  // AuthenticationRepo
  // Future<SignInResponseModel?> signIn({
  //   required String mobileNo,
  //   required String deviceId,
  //   required String fcm,
  // }) async {
  //   try {
  //     final result = await apiManager.post(
  //       NetworkConstants.signIn,
  //       data: {
  //         "mobileNo": mobileNo,
  //         "deviceId": deviceId,
  //         "fcm": fcm,
  //       },
  //     );
  //
  //     debugPrint("SignIn Raw Response: ${result.data}");
  //
  //     // Yaha pura result.data pass kare
  //     if (result.data is Map<String, dynamic>) {
  //       return SignInResponseModel.fromJson(result.data);
  //     } else {
  //       debugPrint("Invalid response format: ${result.data}");
  //       return null;
  //     }
  //   } catch (e, stack) {
  //     debugPrint("SignIn API Error: $e\n$stack");
  //     return null;
  //   }
  // }

  Future<dynamic> pendingApproval() async {
    try {
      final response = await apiManager.get(NetworkConstants.pendingApproval,);

      if (response.status != 200) {
        AppToasting.showWarning(response.data?.message ?? 'Failed to fetch profile');
        return null;
      }
      debugPrint("model Data ${response.data}");
      return response.data;
    } catch (err) {
      AppToasting.showError('Error fetching GetPassenger: ${err.toString()}');
      return null;
    }
  }

  Future<dynamic> approvalCoolie(id) async {
    try {
      final response = await apiManager.get("${NetworkConstants.approveCollie}/$id",);

      if (response.status != 200) {
        AppToasting.showWarning(response.data?.message ?? 'Failed to fetch profile');
        return null;
      }
      debugPrint("model Data ${response.data}");
      return response.data;
    } catch (err) {
      AppToasting.showError('Error fetching GetPassenger: ${err.toString()}');
      return null;
    }
  }



}
