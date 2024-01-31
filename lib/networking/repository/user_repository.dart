import 'package:pemint_admin_app/model/api_response/BaseResponse.dart';
import 'package:pemint_admin_app/networking/ApiProvider.dart';
import 'package:pemint_admin_app/networking/NetworkConstant.dart';
import 'package:pemint_admin_app/view/login/forgot_password.dart';

class UserRepository {
  final _apiService = ApiProvider();

  Future<BaseResponses> createDemand({required Map parameter}) async {
    dynamic response = await _apiService.postAfterAuth(
        parameter, NetworkConstant.END_POINT_CREATE_DEMAND);
    return response;
  }

  Future<BaseResponses> getAllDemands({required Map parameter}) async {
    dynamic response = await _apiService.postAfterAuthWithIdToken(parameter,
        NetworkConstant.END_POINT_GET_ALL_DEMAND);
    return response;
  }

  Future<BaseResponses> getTransactionDetailById(
      {required String transactionId}) async {
    dynamic response = await _apiService.getAfterAuthWihAccessToken(
        "${NetworkConstant.END_POINT_TRANSACTION_DETAIL}?transactionId=$transactionId");
    return response;
  }

  Future<BaseResponses> getDashboardData({required Map parameter}) async {
    dynamic response = await _apiService.postAfterAuthWithIdToken(
        parameter, NetworkConstant.END_POINT_GET_DASHBOARD_DATA);
    return response;
  }

  Future<BaseResponses> getProfileDetails({required String partnerId}) async {
    dynamic response = await _apiService.getAfterAuthWihIdToken(
        "${NetworkConstant.END_POINT_GET_PROFILE_DETAILS}?partnerId=$partnerId");
    return response;
  }
}
