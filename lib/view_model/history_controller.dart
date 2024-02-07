import 'package:get/get.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/demands_against_partner_response.dart';
import 'package:pemint_admin_app/model/api_response/transaction_detail_by_id_response.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';

import '../networking/SharedPref.dart';

class HistoryController extends GetxController {
  String abc = SharedPref().getPartnerId().toString();
  final isLoading = false.obs;
  final _userRepository = UserRepository();
  final demanddata = Rx<DemandsAgainstPartnerData?>(null);
  // void getAllDemandsData() async {
  //   isLoading.value = true;
  //   update();
  //   Map parameter = {
  //     "partnerId": await SharedPref().getPartnerId(),
  //   };
  //   try {
  //     var res = await _userRepository.getAllDemands(parameter: parameter);
  //     if (res.statusCode == 200) {
  //       demanddata.value = DemandsAgainstPartnerData.fromJson(res.data);
  //       print(res.data.toString());
  //     }
  //   } catch (e) {
  //     print(demanddata.value);

  //     print(e.toString());
  //     ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
  //   }

  //   isLoading.value = false;
  //   update();
  // }

  void getAllDemandsData(
      {int offset = 0, Map<String, dynamic>? lastEvaluatedKey}) async {
    isLoading.value = true;
    update();
    Map<String, dynamic> parameters = {
      "partnerId": await SharedPref().getPartnerId(),
      "offset": offset,
    };
    if (lastEvaluatedKey != null) {
      parameters["lastEvaluatedKey"] = lastEvaluatedKey;
    }
    try {
      var res = await _userRepository.getAllDemands(parameter: parameters);
      if (res.statusCode == 200) {
        demanddata.value = DemandsAgainstPartnerData.fromJson(res.data);
        print(res.data.toString());
      }
    } catch (e) {
      print(demanddata.value);
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }
    isLoading.value = false;
    update();
  }

  TransactionDetailData? transactionDetailData;
  Future<void> getTransactionDetail(String transactionId) async {
    isLoading.value = true;
    try {
      final allDemandsRes = await _userRepository.getTransactionDetailById(
          transactionId: transactionId);
      if (allDemandsRes.statusCode == 200) {
        transactionDetailData =
            TransactionDetailData.fromJson(allDemandsRes.data);
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    isLoading.value = false;
  }
}
