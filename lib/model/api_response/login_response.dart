// To parse this JSON data, do
//
//     final loginApiResponse = loginApiResponseFromJson(jsonString);

import 'dart:convert';

LoginApiResponse loginApiResponseFromJson(String str) => LoginApiResponse.fromJson(json.decode(str));

String loginApiResponseToJson(LoginApiResponse data) => json.encode(data.toJson());

class LoginApiResponse {
    int statusCode;
    bool success;
    String message;
    LoginData data;

    LoginApiResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory LoginApiResponse.fromJson(Map<String, dynamic> json) => LoginApiResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: LoginData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class LoginData {
    ChallengeParameters challengeParameters;
    AuthenticationResult authenticationResult;

    LoginData({
        required this.challengeParameters,
        required this.authenticationResult,
    });

    factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
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
