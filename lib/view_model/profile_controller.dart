import 'package:get/get.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/dashboard_data_response.dart';
import 'package:pemint_admin_app/model/api_response/profile_details_response.dart';
import 'package:pemint_admin_app/networking/SharedPref.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';

class ProfileController extends GetxController {
  final isLoading = true.obs;
  final _userRepository = UserRepository();

  final data = Rx<ProfileDetailsData?>(null);

  void getProfileDetails() async {
    try {
      var res = await _userRepository.getProfileDetails(
          partnerId: await SharedPref().getPartnerId() ?? "-");
      if (res.statusCode == 200) {
        // print(SharedPref().getPartnerId().toString());
        data.value = ProfileDetailsData.fromJson(res.data);
        print(res);
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }
}
