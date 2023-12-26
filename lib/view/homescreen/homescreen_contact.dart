import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_groups.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_history.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreenContact extends StatefulWidget {
  HomeScreenContact({Key? key}) : super(key: key);

  @override
  State<HomeScreenContact> createState() => _HomeScreenContactState();
}

class _HomeScreenContactState extends State<HomeScreenContact> {
  final DashboardController viewModel = Get.put(DashboardController());
  Future<void> _checkPermissionStatus() async {
    final status = await Permission.contacts.status;

    _buildPermissionScreen(status);
  }

  Future<void> _requestPermission() async {
    _buildPermissionScreen(await Permission.contacts.request());
  }

  @override
  void initState() {
    super.initState();
    _checkPermissionStatus();
  }

  final TextEditingController _searchController = TextEditingController();

  List<Contact> _filterContacts(List<Contact> contacts, String query) {
    return contacts
        .where((contact) =>
            contact.displayName?.toLowerCase().contains(query.toLowerCase()) ==
                true ||
            contact.phones?.any((phone) =>
                    phone.value?.toLowerCase().contains(query.toLowerCase()) ==
                    true) ==
                true)
        .toList();
  }

  Widget contactsBody = Container();
  Future<void> _buildPermissionScreen(PermissionStatus status) async {
    if (status == PermissionStatus.denied ||
        status == PermissionStatus.permanentlyDenied) {
      contactsBody = Column(
        children: [
          const Text('Permission denied.\nPlease enable contacts permission.'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await _requestPermission();
            },
            child: const Text('Retry Permission'),
          ),
        ],
      );
      setState(() {});
    } else {
      contactsBody = const Center(
        child: CircularProgressIndicator.adaptive(),
      );
      setState(() {});
      final Iterable<Contact> contacts = await ContactsService.getContacts();
      setState(() {
        _contactsList = contacts.toList();
        _orig_contactsList = contacts.toList();
        contactsBody = _buildContactsList(_contactsList);
      });
    }
  }

  List<Contact> _contactsList = [];
  List<Contact> _orig_contactsList = [];

  Widget _buildContactsList(List<Contact> contacts) {
    return SizedBox(
      height: 300,
      width: 200,
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final Contact contact = contacts[index];
          return ListTile(
            title: Text(
              contact.displayName ?? '',
              style: const TextStyle(
                color: Color(0xFF292D32),
                fontSize: 14,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              contact.phones!.isNotEmpty ? contact.phones!.first.value! : '',
              style: const TextStyle(
                color: Color(0xFF9888A4),
                fontSize: 12,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: GestureDetector(
              onTap: () {
                Get.dialog(DemandDialog(
                  contact: contact,
                ));
              },
              child: const Icon(
                Icons.add_circle_outline_rounded,
                color: AppColor.primaryColor,
                size: 30,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Scaffold(
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
                    Image.asset(
                      'assets/pemintlogo2.png',
                      height: 70,
                      width: 70,
                    ),
                    const Row(
                      children: [
                        Text.rich(
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
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
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
                              margin: const EdgeInsets.only(left: 10, top: 20),
                              width: 100,
                              height: 50,
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
                          Container(
                            height: 2,
                            width: 100,
                            color: AppColor.whiteColor,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                            ),
                            height: 70,
                            width: 100,
                            child: const Center(
                              child: Text(
                                'Contact',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,
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
                              Get.to(const HomeScreenHistory());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, top: 30),
                              decoration: const BoxDecoration(),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'History',
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
                              Get.to(const HomeScreenProfile());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
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
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Receive Money                                      ',
                              style: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 16,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 40,
                              width: Get.width / 1.5,
                              decoration: BoxDecoration(
                                  color: AppColor.veryLightPurple,
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(color: AppColor.primaryColor)),
                              child: Center(
                                child: TextField(
                                  controller: _searchController,
                                  onChanged: (query) {
                                    setState(() {
                                      _contactsList =
                                          _filterContacts(_contactsList, query);
                                      contactsBody =
                                          _buildContactsList(_contactsList);
                                    });
                                  },
                                  style: const TextStyle(
                                      color: Color(0xFF292D32),
                                      fontSize: 14,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600,
                                      height: 1.5),
                                  textAlign: TextAlign.start,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: AppColor.purpleAccent,
                                    ),
                                    suffixIcon: GestureDetector(
                                      child: const Icon(
                                        Icons.cancel,
                                        color: AppColor.purpleAccent,
                                      ),
                                      onTap: () {
                                        contactsBody = _buildContactsList(
                                            _orig_contactsList);
                                        _searchController.clear();
                                        setState(() {});
                                      },
                                    ),
                                    hintText: 'Enter a mobile number or name',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF9888A4),
                                      fontSize: 14,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 100,
                                  color: AppColor.veryLightPurple,
                                  child: const Center(
                                    child: Text(
                                      'Contacts',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(Groups());
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    color: AppColor.veryLightGreyColor,
                                    child: const Center(
                                      child: Text(
                                        'Groups',
                                        style: TextStyle(
                                          color: Color(0xFF9888A4),
                                          fontSize: 14,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                                onTap: () {
                                  print('abc');
                                  Get.dialog(AddToGroupDialog());
                                },
                                child: contactsBody),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GetBuilder(
            init: DashboardController(),
            builder: (controller) {
              if (controller.isLoading.value == true) {
                return Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColor.primaryColor),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            }),
      ],
    ));
  }
}

class AddToGroupDialog extends StatelessWidget {
  AddToGroupDialog({
    Key? key,
  }) : super(key: key);

  final DashboardController viewModel = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          alignment: Alignment.centerRight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: EdgeInsets.only(left: Get.width / 2, right: 20),
          backgroundColor: AppColor.whiteColor,
          child: Container(
            decoration: const BoxDecoration(),
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Add to Group',
                    style: TextStyle(
                      color: Color(0xFF52378F),
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'Create new group',
                    style: TextStyle(
                      color: Color(0xFF52378F),
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Color(0xFF52378F),
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
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

class DemandDialog extends StatelessWidget {
  DemandDialog({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  final DashboardController viewModel = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: AppColor.veryLightGreyColor,
            child: Container(
              height: 400,
              width: Get.width / 1.2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: const CircleAvatar(
                                  backgroundColor: AppColor.primaryColor,
                                  radius: 15,
                                  child: Icon(
                                    Icons.close,
                                    color: AppColor.whiteColor,
                                    size: 18,
                                  ))),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: AppColor.contentColorBlue)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(
                            child: TextField(
                              controller: viewModel.amountController,
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 14,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefix: Text(
                                  'Enter amount',
                                  style: TextStyle(
                                    color: Color(0xFF9888A4),
                                    fontSize: 12,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                hintText: '₹00',
                                hintStyle: TextStyle(
                                  color: Color(0xFF9888A4),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: AppColor.contentColorBlue)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: TextField(
                                controller: viewModel.noteController,
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                style: const TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color(0xFF9888A4),
                                    fontSize: 12,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  hintText: 'Transaction note',
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Add details +',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF00BBF2),
                              fontSize: 12,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.greyColor, width: 2),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                'Invoice number',
                                style: TextStyle(
                                  color: Color(0xFFBEBEBE),
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.file_present_rounded,
                            color: AppColor.greyColor,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        'Invoice date:',
                        style: TextStyle(
                          color: Color(0xFFBEBEBE),
                          fontSize: 10,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.greyColor, width: 2),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                'dd',
                                style: TextStyle(
                                  color: Color(0xFFBEBEBE),
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.greyColor, width: 2),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                'mm',
                                style: TextStyle(
                                  color: Color(0xFFBEBEBE),
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.greyColor, width: 2),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                'year',
                                style: TextStyle(
                                  color: Color(0xFFBEBEBE),
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.calendar_month,
                            color: AppColor.greyColor,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.createDemand(contact);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColor.primaryColor),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Generate link & Share',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.share,
                                  color: AppColor.whiteColor,
                                  size: 20,
                                )
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        GetBuilder(
            init: DashboardController(),
            builder: (controller) {
              if (controller.isLoading.value == true) {
                return Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColor.primaryColor),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            }),
      ],
    );
  }
}
