import 'dart:io';

import 'package:pemint_admin_app/model/api_response/BaseResponse.dart';
import 'package:pemint_admin_app/networking/ApiProvider.dart';
import 'package:pemint_admin_app/networking/NetworkConstant.dart';
import 'package:pemint_admin_app/networking/SharedPref.dart';

class AuthRepository {
  final _apiService = ApiProvider();

  Future<BaseResponses> signUpApi({required Map parameter}) async {
    dynamic response = await _apiService.postBeforeAuth(
        parameter, NetworkConstant.END_POINT_SIGNUP);
    return response;
  }

  Future<BaseResponses> addPartner({required Map parameter}) async {
    dynamic response = await _apiService.postAfterAuthWithIdToken(
        parameter, NetworkConstant.END_POINT_ADD_PARTNER);
    return response;
  }

  Future<BaseResponses> updatePartner({required Map parameter}) async {
    dynamic response = await _apiService.postAfterAuthWithIdToken(parameter,
        "${NetworkConstant.END_POINT_UPDATE_PARTNER}/${await SharedPref().getPartnerId() ?? "-"}");
    return response;
  }

  Future<BaseResponses> loginApi({required Map parameter}) async {
    dynamic response = await _apiService.postBeforeAuth(
        parameter, NetworkConstant.END_POINT_LOGIN);
    return response;
  }

  Future<BaseResponses> sendOTP({required Map parameter}) async {
    dynamic response = await _apiService.postBeforeAuth(
        parameter, NetworkConstant.END_POINT_RESENDOTP);
    return response;
  }

  Future<BaseResponses> verifyOTP({required Map parameter}) async {
    dynamic response = await _apiService.postBeforeAuth(
        parameter, NetworkConstant.END_POINT_VERIFYOTP);
    return response;
  }

  Future<BaseResponses> forgotPassword({required Map parameter}) async {
    dynamic response = await _apiService.postBeforeAuth(
        parameter, NetworkConstant.END_POINT_FORGOTPASSWORD);
    return response;
  }

  Future<BaseResponses> resetPassword({required Map parameter}) async {
    dynamic response = await _apiService.postBeforeAuth(
        parameter, NetworkConstant.END_POINT_RESETPASSWORD);
    return response;
  }

  Future<BaseResponses> uploadDocuments(
      {required Map<String, File> parameter}) async {
    dynamic response = await _apiService.postAfterAuthWithMultipart(
        NetworkConstant.END_POINT_UPLOAD_DOCUMENTS, parameter);
    return response;
  }

  Future<BaseResponses> getUserMeData() async {
    dynamic response = await _apiService
        .getAfterAuthWihAccessToken(NetworkConstant.END_POINT_USER_ME);
    return response;
  }
}
