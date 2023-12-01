// To parse this JSON data, do
//
//     final verifyOtpApiResponse = verifyOtpApiResponseFromJson(jsonString);

import 'dart:convert';

VerifyOtpApiResponse verifyOtpApiResponseFromJson(String str) => VerifyOtpApiResponse.fromJson(json.decode(str));

String verifyOtpApiResponseToJson(VerifyOtpApiResponse data) => json.encode(data.toJson());

class VerifyOtpApiResponse {
    bool success;
    String message;
    VerifyOtpData data;

    VerifyOtpApiResponse({
        required this.success,
        required this.message,
        required this.data,
    });

    factory VerifyOtpApiResponse.fromJson(Map<String, dynamic> json) => VerifyOtpApiResponse(
        success: json["success"],
        message: json["message"],
        data: VerifyOtpData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class VerifyOtpData {
    ChallengeParameters challengeParameters;
    AuthenticationResult authenticationResult;

    VerifyOtpData({
        required this.challengeParameters,
        required this.authenticationResult,
    });

    factory VerifyOtpData.fromJson(Map<String, dynamic> json) => VerifyOtpData(
        challengeParameters: ChallengeParameters.fromJson(json["ChallengeParameters"]),
        authenticationResult: AuthenticationResult.fromJson(json["AuthenticationResult"]),
    );

    Map<String, dynamic> toJson() => {
        "ChallengeParameters": challengeParameters.toJson(),
        "AuthenticationResult": authenticationResult.toJson(),
    };
}

class AuthenticationResult {
    String accessToken;
    int expiresIn;
    String tokenType;
    String refreshToken;
    String idToken;

    AuthenticationResult({
        required this.accessToken,
        required this.expiresIn,
        required this.tokenType,
        required this.refreshToken,
        required this.idToken,
    });

    factory AuthenticationResult.fromJson(Map<String, dynamic> json) => AuthenticationResult(
        accessToken: json["AccessToken"],
        expiresIn: json["ExpiresIn"],
        tokenType: json["TokenType"],
        refreshToken: json["RefreshToken"],
        idToken: json["IdToken"],
    );

    Map<String, dynamic> toJson() => {
        "AccessToken": accessToken,
        "ExpiresIn": expiresIn,
        "TokenType": tokenType,
        "RefreshToken": refreshToken,
        "IdToken": idToken,
    };
}

class ChallengeParameters {
    ChallengeParameters();

    factory ChallengeParameters.fromJson(Map<String, dynamic> json) => ChallengeParameters(
    );

    Map<String, dynamic> toJson() => {
    };
}
