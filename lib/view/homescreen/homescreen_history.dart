import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/model/api_response/demands_against_partner_response.dart';
import 'package:pemint_admin_app/model/api_response/transaction_detail_by_id_response.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';

class HomeScreenHistory extends StatefulWidget {
  const HomeScreenHistory({Key? key}) : super(key: key);

  @override
  State<HomeScreenHistory> createState() => _HomeScreenHistoryState();
}

class _HomeScreenHistoryState extends State<HomeScreenHistory> {
  @override
  void initState() {
    getAllDemands();
    super.initState();
  }

  bool isLoading = true;
  final _userRepository = UserRepository();
  List<DemandsAgainstPartnerData> demandsData = [];
  Future<void> getAllDemands() async {
    isLoading = true;
    setState(() {});
    try {
      final allDemandsRes =
          await _userRepository.getAllDemands(partnerId: '123111');
      if (allDemandsRes.statusCode == 200) {
        demandsData = allDemandsRes.data
            .map<DemandsAgainstPartnerData>(
                (json) => DemandsAgainstPartnerData.fromJson(json))
            .toList();
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    isLoading = false;
    setState(() {});
  }

  TransactionDetailData? transactionDetailData;
  Future<void> getTransactionDetail(String transactionId) async {
    isLoading = true;
    setState(() {});
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
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/pemintlogo2.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Row(
                      children: [
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Welcome! \n',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextSpan(
                                text: 'Shivam Grocery Shop',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 35,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //drawer
                    Container(
                      height: Get.height / 1.23,
                      width: 100,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(12)),
                        color: Color.fromARGB(255, 33, 170, 243),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(const HomeScreenDashboard());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10, right: 10, top: 20),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'Dashboard',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(HomeScreenContact());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 70,
                              width: 100,
                              child: const Text(
                                'Contact',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 2,
                            width: 100,
                            color: AppColor.whiteColor,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                            ),
                            width: 100,
                            height: 70,
                            child: const Center(
                              child: Text(
                                'History',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 2,
                            width: 100,
                            color: AppColor.whiteColor,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(const HomeScreenProfile());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, top: 30),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'Profile',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              decoration: const BoxDecoration(),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'Add\nEmployee',
                                style: TextStyle(
                                  color: Color(0x7F292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              decoration: const BoxDecoration(),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'QR Code\nScan and Pay',
                                style: TextStyle(
                                  color: Color(0x7F292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: const BoxDecoration(),
                            width: 100,
                            height: 70,
                            child: const Text(
                              'Bill\nPayment',
                              style: TextStyle(
                                color: Color(0x7F292D32),
                                fontSize: 16,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    //body
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Container(
                          height: 40,
                          width: Get.width / 1.5,
                          decoration: BoxDecoration(
                              color: AppColor.veryLightPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColor.primaryColor)),
                          child: const Center(
                            child: TextField(
                              style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                  height: 1.5),
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppColor.purpleAccent,
                                ),
                                hintText: 'Enter a mobile number or name',
                                hintStyle: TextStyle(
                                  color: Color(0xFF9888A4),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          height: 300,
                          width: 250,
                          child: ListView.builder(
                              itemCount: demandsData.length,
                              itemBuilder: (_, i) {
                                final demand = demandsData[i];
                                final isSuccess = demand.paymentStatus
                                    .toLowerCase()
                                    .contains('success');
                                return GestureDetector(
                                  onTap: () async {
                                    if (isSuccess) {
                                      await getTransactionDetail(
                                          demand.transactionId);
                                      Get.dialog(TransactionDetailDialog(
                                        transactionDetailData:
                                            transactionDetailData!,
                                      ));
                                    } else {
                                      Get.dialog(TransactionLinkDialog(
                                        url: demand.transactionUrl,
                                      ));
                                    }
                                    print('abc');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFF2E1762),
                                        child: Icon(
                                          isSuccess
                                              ? Icons.arrow_downward_rounded
                                              : Icons.arrow_upward_rounded,
                                          color: AppColor.whiteColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            demand.customerName,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: Color(0xFF292D32),
                                              fontSize: 14,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            '11 nov 2023',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Color(0xFF9888A4),
                                              fontSize: 12,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: Get.width / 9),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            '₹10,00,000',
                                            style: TextStyle(
                                              color: Color(0xFF292D32),
                                              fontSize: 12,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            demand.paymentStatus,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: isSuccess
                                                  ? Color(0xFF54F15A)
                                                  : Color(0xFF00BBF2),
                                              fontSize: 10,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
        isLoading == true
            ? Container(
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColor.primaryColor),
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}

class TransactionLinkDialog extends StatelessWidget {
  const TransactionLinkDialog({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          alignment: Alignment.centerRight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: EdgeInsets.only(left: Get.width / 3.5, right: 20),
          backgroundColor: AppColor.whiteColor,
          child: Container(
            decoration: const BoxDecoration(),
            height: 120,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      url,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Icon(
                      Icons.copy_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),
                    const Icon(
                      Icons.share_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),
                    const Icon(
                      Icons.delete_outline_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TransactionDetailDialog extends StatelessWidget {
  const TransactionDetailDialog({
    Key? key,
    required this.transactionDetailData,
  }) : super(key: key);

  final TransactionDetailData transactionDetailData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          alignment: Alignment.centerRight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: const EdgeInsets.only(right: 20),
          backgroundColor: AppColor.veryLightGreyColor,
          child: Container(
            decoration: const BoxDecoration(),
            height: 230,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Transaction ID',
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 14,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0.08,
                    ),
                  ),
                  Text(
                    transactionDetailData.transactionId,
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 14,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                  const Text(
                    'Transaction Date',
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 14,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0.08,
                    ),
                  ),
                  const Text(
                    '08/11/2023',
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 14,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                  const Text(
                    'Mode of Payment',
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 14,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0.08,
                    ),
                  ),
                  const Text(
                    'UPI',
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 14,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
