// To parse this JSON data, do
//
//     final signupApiResponse = signupApiResponseFromJson(jsonString);

import 'dart:convert';

SignupApiResponse signupApiResponseFromJson(String str) => SignupApiResponse.fromJson(json.decode(str));

String signupApiResponseToJson(SignupApiResponse data) => json.encode(data.toJson());

class SignupApiResponse {
    int statusCode;
    bool success;
    String message;
    SignupData data;

    SignupApiResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory SignupApiResponse.fromJson(Map<String, dynamic> json) => SignupApiResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: SignupData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class SignupData {
    bool userConfirmed;
    CodeDeliveryDetails codeDeliveryDetails;
    String userSub;

    SignupData({
        required this.userConfirmed,
        required this.codeDeliveryDetails,
        required this.userSub,
    });

    factory SignupData.fromJson(Map<String, dynamic> json) => SignupData(
        userConfirmed: json["UserConfirmed"],
        codeDeliveryDetails: CodeDeliveryDetails.fromJson(json["CodeDeliveryDetails"]),
        userSub: json["UserSub"],
    );

    Map<String, dynamic> toJson() => {
        "UserConfirmed": userConfirmed,
        "CodeDeliveryDetails": codeDeliveryDetails.toJson(),
        "UserSub": userSub,
    };
}

class CodeDeliveryDetails {
    String destination;
    String deliveryMedium;
    String attributeName;

    CodeDeliveryDetails({
        required this.destination,
        required this.deliveryMedium,
        required this.attributeName,
    });

    factory CodeDeliveryDetails.fromJson(Map<String, dynamic> json) => CodeDeliveryDetails(
        destination: json["Destination"],
        deliveryMedium: json["DeliveryMedium"],
        attributeName: json["AttributeName"],
    );

    Map<String, dynamic> toJson() => {
        "Destination": destination,
        "DeliveryMedium": deliveryMedium,
        "AttributeName": attributeName,
    };
}
