import 'package:pemint_admin_app/model/api_response/BaseResponse.dart';
import 'package:pemint_admin_app/networking/ApiProvider.dart';
import 'package:pemint_admin_app/networking/NetworkConstant.dart';

class AppVersionRepository {
  final _apiService = ApiProvider();

  Future<BaseResponses> getAppVersion() async {
    dynamic response = await _apiService
        .get("${NetworkConstant.END_POINT_CHECK_VERSION}?osType=Android");
    return response;
  }
}
