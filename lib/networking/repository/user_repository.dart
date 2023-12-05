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
}
