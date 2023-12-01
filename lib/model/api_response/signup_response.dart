// To parse this JSON data, do
//
//     final loginApiResponse = loginApiResponseFromJson(jsonString);

import 'dart:convert';

SignupApiResponse signUpApiResponseFromJson(String str) =>
    SignupApiResponse.fromJson(json.decode(str));

String signUpApiResponseToJson(SignupApiResponse data) =>
    json.encode(data.toJson());

class SignupApiResponse {
  bool success;
  String message;
  SignupData data;

  SignupApiResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory SignupApiResponse.fromJson(Map<String, dynamic> json) =>
      SignupApiResponse(
        success: json["success"],
        message: json["message"],
        data: SignupData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class SignupData {
  String challengeName;
  String session;
  ChallengeParameters challengeParameters;

  SignupData({
    required this.challengeName,
    required this.session,
    required this.challengeParameters,
  });

  factory SignupData.fromJson(Map<String, dynamic> json) => SignupData(
        challengeName: json["ChallengeName"],
        session: json["Session"],
        challengeParameters:
            ChallengeParameters.fromJson(json["ChallengeParameters"]),
      );

  Map<String, dynamic> toJson() => {
        "ChallengeName": challengeName,
        "Session": session,
        "ChallengeParameters": challengeParameters.toJson(),
      };
}

class ChallengeParameters {
  String codeDeliveryDestination;
  String userIdForSrp;
  String codeDeliveryDeliveryMedium;

  ChallengeParameters({
    required this.codeDeliveryDestination,
    required this.userIdForSrp,
    required this.codeDeliveryDeliveryMedium,
  });

  factory ChallengeParameters.fromJson(Map<String, dynamic> json) =>
      ChallengeParameters(
        codeDeliveryDestination: json["CODE_DELIVERY_DESTINATION"],
        userIdForSrp: json["USER_ID_FOR_SRP"],
        codeDeliveryDeliveryMedium: json["CODE_DELIVERY_DELIVERY_MEDIUM"],
      );

  Map<String, dynamic> toJson() => {
        "CODE_DELIVERY_DESTINATION": codeDeliveryDestination,
        "USER_ID_FOR_SRP": userIdForSrp,
        "CODE_DELIVERY_DELIVERY_MEDIUM": codeDeliveryDeliveryMedium,
      };
}
