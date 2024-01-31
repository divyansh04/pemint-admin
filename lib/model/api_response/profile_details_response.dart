// To parse this JSON data, do
//
//     final profileDetailsResponse = profileDetailsResponseFromJson(jsonString);

import 'dart:convert';

ProfileDetailsResponse profileDetailsResponseFromJson(String str) =>
    ProfileDetailsResponse.fromJson(json.decode(str));

String profileDetailsResponseToJson(ProfileDetailsResponse data) =>
    json.encode(data.toJson());

class ProfileDetailsResponse {
  int statusCode;
  bool success;
  String message;
  ProfileDetailsData data;

  ProfileDetailsResponse({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      ProfileDetailsResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: ProfileDetailsData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class ProfileDetailsData {
  String businessType;
  // String bankAccountNumber;
  // String dataPancard;
  String partnerType;
  // String partnerId;
  // String businessNameBankAccount;
  // String city;
  // String partnerLogo;
  String directorName;
  String headOfficeAddress;
  // String partnerState;
  // String bankIfscCode;
  // DateTime modifiedAt;
  // String partnerStatus;
  // String officialMailId;
  // String adharCardFront;
  // String companyIncorporationUin;
  // String panNumber;
  // String aadharCardFrontSide;
  // String pancard;
  // String pincode;
  // String accountType;
  String businessName;
  // String cancelledChequeUpload;
  // String gstNumber;

  ProfileDetailsData({
    required this.businessType,
    // required this.bankAccountNumber,
    // required this.dataPancard,
    required this.partnerType,
    // required this.partnerId,
    // required this.businessNameBankAccount,
    // required this.city,
    // required this.partnerLogo,
    required this.directorName,
    required this.headOfficeAddress,
    // required this.partnerState,
    // required this.bankIfscCode,
    // required this.modifiedAt,
    // required this.partnerStatus,
    // required this.officialMailId,
    // required this.adharCardFront,
    // required this.companyIncorporationUin,
    // required this.panNumber,
    // required this.aadharCardFrontSide,
    // required this.pancard,
    // required this.pincode,
    // required this.accountType,
    required this.businessName,
    // required this.cancelledChequeUpload,
    // required this.gstNumber,
  });

  factory ProfileDetailsData.fromJson(Map<String, dynamic> json) => ProfileDetailsData(
        businessType: json["BusinessType"],
        // bankAccountNumber: json["BankAccountNumber"],
        // dataPancard: json["pancard"],
        partnerType: json["PartnerType"],
        // partnerId: json["PartnerID"],
        // businessNameBankAccount: json["BusinessNameBankAccount"],
        // city: json["City"],
        // partnerLogo: json["PartnerLogo"],
        directorName: json["DirectorName"],
        headOfficeAddress: json["HeadOfficeAddress"],
        // partnerState: json["partnerState"],
        // bankIfscCode: json["BankIFSCCode"],
        // modifiedAt: DateTime.parse(json["ModifiedAt"]),
        // partnerStatus: json["PartnerStatus"],
        // officialMailId: json["OfficialMailId"],
        // adharCardFront: json["AdharCardFront"],
        // companyIncorporationUin: json["CompanyIncorporationUIN"],
        // panNumber: json["PANNumber"],
        // aadharCardFrontSide: json["AadharCardFrontSide"],
        // pancard: json["Pancard"],
        // pincode: json["Pincode"],
        // accountType: json["AccountType"],
        businessName: json["BusinessName"],
        // cancelledChequeUpload: json["CancelledChequeUpload"],
        // gstNumber: json["GSTNumber"],
      );

  Map<String, dynamic> toJson() => {
        "BusinessType": businessType,
        // "BankAccountNumber": bankAccountNumber,
        // "pancard": dataPancard,
        "PartnerType": partnerType,
        // "PartnerID": partnerId,
        // "BusinessNameBankAccount": businessNameBankAccount,
        // "City": city,
        // "PartnerLogo": partnerLogo,
        "DirectorName": directorName,
        "HeadOfficeAddress": headOfficeAddress,
        // "partnerState": partnerState,
        // "BankIFSCCode": bankIfscCode,
        // "ModifiedAt": modifiedAt.toIso8601String(),
        // "PartnerStatus": partnerStatus,
        // "OfficialMailId": officialMailId,
        // "AdharCardFront": adharCardFront,
        // "CompanyIncorporationUIN": companyIncorporationUin,
        // "PANNumber": panNumber,
        // "AadharCardFrontSide": aadharCardFrontSide,
        // "Pancard": pancard,
        // "Pincode": pincode,
        // "AccountType": accountType,
        "BusinessName": businessName,
        // "CancelledChequeUpload": cancelledChequeUpload,
        // "GSTNumber": gstNumber,
      };
}
