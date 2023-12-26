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

class GroupController extends GetxController {
  final isLoading = false.obs;
  final _userRepository = UserRepository();

  @override
  void onInit() {
    _requestPermission();
    super.onInit();
  }

  Future<void> _requestPermission() async {
    final status = await Permission.contacts.request();

    _buildPermissionScreen(status);
  }

  Future<void> _buildPermissionScreen(PermissionStatus status) async {
    if (status == PermissionStatus.denied ||
        status == PermissionStatus.permanentlyDenied) {
      await Permission.contacts.request();
    } else if (status == PermissionStatus.granted) {
      readContact();
    } else {
      await Permission.contacts.request();
    }
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
