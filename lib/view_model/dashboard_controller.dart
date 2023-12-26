import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/create_demand_response.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';
import 'package:pemint_admin_app/view/homescreen/create_group.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class DashboardController extends GetxController {
  final isLoading = false.obs;
  final _userRepository = UserRepository();
  final TextEditingController partnerIdController = TextEditingController();
  final TextEditingController customermobileController =
      TextEditingController();
  final TextEditingController customernameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();
  final TextEditingController invoiceNumberController = TextEditingController();
  final TextEditingController invoiceDateController = TextEditingController();
  final TextEditingController customerEmailController = TextEditingController();
  final TextEditingController groupnameController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  void createDemand(Contact contact) async {
    isLoading.value = true;
    update();

    Map parameter = {
      "PartnerId": "123111",
      "CustomerMobileNo": '9416400508',
      "CustomerName": contact.displayName,
      "Amount": 1,
      "DueDate": DateFormat('yyyy-MM-dd').format(DateTime.now()),
      "InvoiceNo": "1",
      "InvoiceDate": DateFormat('yyyy-MM-dd').format(DateTime.now()),
      "CustomerEmailId": "infogopik@gmail.com",
      "GroupName": "",
      "Note": noteController.text

      // "PartnerId": "123111",
      // "CustomerMobileNo": contact.phones?.first ?? '',
      // "CustomerName": contact.displayName,
      // "Amount": int.parse(amountController.text),
      // "DueDate": DateFormat('yyyy-MM-dd').format(DateTime.now()),
      // "InvoiceNo": "1",
      // "InvoiceDate": DateFormat('yyyy-MM-dd').format(DateTime.now()),
      // "CustomerEmailId": "infogopik@gmail.com",
      // "GroupName": "aa",
      // "Note": noteController.text
    };

    try {
      var res = await _userRepository.createDemand(parameter: parameter);
      if (res.statusCode == 200) {
        print(res);
        CreateDemandData data = CreateDemandData.fromJson(res.data);
        Share.share(data.tinyUrl);
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    // readContact();
  }

  final TextEditingController searchController = TextEditingController();

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

  Future<void> readContact() async {
    final Iterable<Contact> contacts = await ContactsService.getContacts();

    contactsList = contacts.toList();
  }

  List<Contact> contactsList = [];
  List<Contact> orig_contactsList = [];

  List<ContactTile> selectedContactTiles = [];
  List<ContactTile> unselectedContactTiles = [];

  RxList<Contact> selectedContacts = <Contact>[].obs;
  RxList<Contact> searchedContacts = <Contact>[].obs;

  void toggleSelection(Contact contact) {
    if (selectedContacts.contains(contact)) {
      selectedContacts.remove(contact);
    } else {
      selectedContacts.add(contact);
    }
  }

  performSearch(String query) {
    searchedContacts.value = _filterContacts(contactsList, query);
    update();
  }
}
