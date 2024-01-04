// To parse this JSON data, do
//
//     final userMeResponse = userMeResponseFromJson(jsonString);

import 'dart:convert';

UserMeResponse userMeResponseFromJson(String str) => UserMeResponse.fromJson(json.decode(str));

String userMeResponseToJson(UserMeResponse data) => json.encode(data.toJson());

class UserMeResponse {
    int statusCode;
    bool success;
    String message;
    UserMeData data;

    UserMeResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory UserMeResponse.fromJson(Map<String, dynamic> json) => UserMeResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: UserMeData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class UserMeData {
    User user;
    Partner partner;

    UserMeData({
        required this.user,
        required this.partner,
    });

    factory UserMeData.fromJson(Map<String, dynamic> json) => UserMeData(
        user: User.fromJson(json["User"]),
        partner: Partner.fromJson(json["Partner"]),
    );

    Map<String, dynamic> toJson() => {
        "User": user.toJson(),
        "Partner": partner.toJson(),
    };
}

class Partner {
    String partnerId;
    String businessName;
    String partnerLogo;
    String partnerStatus;

    Partner({
        required this.partnerId,
        required this.businessName,
        required this.partnerLogo,
        required this.partnerStatus,
    });

    factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        partnerId: json["PartnerId"],
        businessName: json["BusinessName"],
        partnerLogo: json["PartnerLogo"],
        partnerStatus: json["PartnerStatus"],
    );

    Map<String, dynamic> toJson() => {
        "PartnerId": partnerId,
        "BusinessName": businessName,
        "PartnerLogo": partnerLogo,
        "PartnerStatus": partnerStatus,
    };
}

class User {
    String address;
    String city;
    bool isActive;
    bool isDeleted;
    String phoneNumber;
    String state;
    String email;
    DateTime createdAt;
    String userId;
    String password;
    String createdBy;
    String modifiedAt;
    String cognitoId;
    String userRole;
    String modifiedBy;
    String pincode;
    String name;

    User({
        required this.address,
        required this.city,
        required this.isActive,
        required this.isDeleted,
        required this.phoneNumber,
        required this.state,
        required this.email,
        required this.createdAt,
        required this.userId,
        required this.password,
        required this.createdBy,
        required this.modifiedAt,
        required this.cognitoId,
        required this.userRole,
        required this.modifiedBy,
        required this.pincode,
        required this.name,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        address: json["Address"],
        city: json["City"],
        isActive: json["Is_Active"],
        isDeleted: json["Is_Deleted"],
        phoneNumber: json["Phone_Number"],
        state: json["State"],
        email: json["Email"],
        createdAt: DateTime.parse(json["Created_At"]),
        userId: json["UserID"],
        password: json["Password"],
        createdBy: json["Created_By"],
        modifiedAt: json["Modified_At"],
        cognitoId: json["Cognito_ID"],
        userRole: json["UserRole"],
        modifiedBy: json["Modified_By"],
        pincode: json["Pincode"],
        name: json["Name"],
    );

    Map<String, dynamic> toJson() => {
        "Address": address,
        "City": city,
        "Is_Active": isActive,
        "Is_Deleted": isDeleted,
        "Phone_Number": phoneNumber,
        "State": state,
        "Email": email,
        "Created_At": createdAt.toIso8601String(),
        "UserID": userId,
        "Password": password,
        "Created_By": createdBy,
        "Modified_At": modifiedAt,
        "Cognito_ID": cognitoId,
        "UserRole": userRole,
        "Modified_By": modifiedBy,
        "Pincode": pincode,
        "Name": name,
    };
}
