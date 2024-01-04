// To parse this JSON data, do
//
//     final addPartnerResponse = addPartnerResponseFromJson(jsonString);

import 'dart:convert';

AddPartnerResponse addPartnerResponseFromJson(String str) => AddPartnerResponse.fromJson(json.decode(str));

String addPartnerResponseToJson(AddPartnerResponse data) => json.encode(data.toJson());

class AddPartnerResponse {
    int statusCode;
    bool success;
    String message;
    AddPartnerData data;

    AddPartnerResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory AddPartnerResponse.fromJson(Map<String, dynamic> json) => AddPartnerResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: AddPartnerData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class AddPartnerData {
    String partnerId;
    String businessName;
    String businessType;
    String partnerType;
    String directorName;
    String headOfficeAddress;
    String partnerState;
    String city;
    String pincode;
    String officialMailId;
    String businessNameBankAccount;
    String accountType;
    String bankAccountNumber;
    String bankIfscCode;
    String companyIncorporationUin;
    String gstNumber;
    String panNumber;
    String partnerLogo;
    DateTime createdAt;
    DateTime modifiedAt;
    String partnerStatus;

    AddPartnerData({
        required this.partnerId,
        required this.businessName,
        required this.businessType,
        required this.partnerType,
        required this.directorName,
        required this.headOfficeAddress,
        required this.partnerState,
        required this.city,
        required this.pincode,
        required this.officialMailId,
        required this.businessNameBankAccount,
        required this.accountType,
        required this.bankAccountNumber,
        required this.bankIfscCode,
        required this.companyIncorporationUin,
        required this.gstNumber,
        required this.panNumber,
        required this.partnerLogo,
        required this.createdAt,
        required this.modifiedAt,
        required this.partnerStatus,
    });

    factory AddPartnerData.fromJson(Map<String, dynamic> json) => AddPartnerData(
        partnerId: json["PartnerID"],
        businessName: json["BusinessName"],
        businessType: json["BusinessType"],
        partnerType: json["PartnerType"],
        directorName: json["DirectorName"],
        headOfficeAddress: json["HeadOfficeAddress"],
        partnerState: json["partnerState"],
        city: json["City"],
        pincode: json["Pincode"],
        officialMailId: json["OfficialMailId"],
        businessNameBankAccount: json["BusinessNameBankAccount"],
        accountType: json["AccountType"],
        bankAccountNumber: json["BankAccountNumber"],
        bankIfscCode: json["BankIFSCCode"],
        companyIncorporationUin: json["CompanyIncorporationUIN"],
        gstNumber: json["GSTNumber"],
        panNumber: json["PANNumber"],
        partnerLogo: json["PartnerLogo"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        modifiedAt: DateTime.parse(json["ModifiedAt"]),
        partnerStatus: json["PartnerStatus"],
    );

    Map<String, dynamic> toJson() => {
        "PartnerID": partnerId,
        "BusinessName": businessName,
        "BusinessType": businessType,
        "PartnerType": partnerType,
        "DirectorName": directorName,
        "HeadOfficeAddress": headOfficeAddress,
        "partnerState": partnerState,
        "City": city,
        "Pincode": pincode,
        "OfficialMailId": officialMailId,
        "BusinessNameBankAccount": businessNameBankAccount,
        "AccountType": accountType,
        "BankAccountNumber": bankAccountNumber,
        "BankIFSCCode": bankIfscCode,
        "CompanyIncorporationUIN": companyIncorporationUin,
        "GSTNumber": gstNumber,
        "PANNumber": panNumber,
        "PartnerLogo": partnerLogo,
        "CreatedAt": createdAt.toIso8601String(),
        "ModifiedAt": modifiedAt.toIso8601String(),
        "PartnerStatus": partnerStatus,
    };
}
