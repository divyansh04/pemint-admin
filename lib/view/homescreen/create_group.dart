import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view_model/contact_controller.dart';
import 'package:pemint_admin_app/view_model/group_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  final GroupController controller = Get.put(GroupController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        children: [
          Dialog(
            alignment: Alignment.bottomRight,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: AppColor.whiteColor,
            child: Container(
              height: Get.height / 1.74,
              width: Get.width / 1.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width / 1.66,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColor.contentColorBlue, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'Enter group name                              ',
                              style: TextStyle(
                                color: Color(0xFF9888A4),
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: AppColor.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Selected members - ${controller.selectedContacts.length}',
                        style: const TextStyle(
                          color: Color(0xFF00BBF2),
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: Get.width / 1.42,
                        color: AppColor.lightGreyColor,
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        height: 40,
                        width: Get.width / 1.4,
                        decoration: BoxDecoration(
                            color: AppColor.veryLightPurple,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.primaryColor)),
                        child: Center(
                          child: TextField(
                            controller: controller.searchController,
                            onChanged: (query) {
                              controller.performSearch(query);
                            },
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 1.5),
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: AppColor.purpleAccent,
                              ),
                              hintText: 'Search Contact',
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: Get.height / 3.1,
                      width: Get.width / 1.4,
                      child: ListView.builder(
                          itemCount: controller.searchedContacts.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: ContactTile(
                                contact: controller.searchedContacts[index],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          controller.isLoading.value == true
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
    });
  }
}

class ContactTile extends StatelessWidget {
  ContactTile({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  final ContactsController controller = Get.put(ContactsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: () {
          controller.toggleSelection(contact);
        },
        child: Container(
          padding: const EdgeInsets.only(left: 8, right: 15),
          height: 50,
          decoration: BoxDecoration(
            color: controller.selectedContacts.contains(contact)
                ? AppColor.veryLightPurple
                : Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      contact.displayName ?? "-",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      contact.phones?.first.value ?? "-",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF9888A4),
                        fontSize: 14,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
