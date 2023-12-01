// To parse this JSON data, do
//
//     final appVersionResponse = appVersionResponseFromJson(jsonString);

import 'dart:convert';

AppVersionResponse appVersionResponseFromJson(String str) => AppVersionResponse.fromJson(json.decode(str));

String appVersionResponseToJson(AppVersionResponse data) => json.encode(data.toJson());

class AppVersionResponse {
    int statusCode;
    bool success;
    String message;
    AppVersionData data;

    AppVersionResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory AppVersionResponse.fromJson(Map<String, dynamic> json) => AppVersionResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: AppVersionData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class AppVersionData {
    String osType;
    String version;

    AppVersionData({
        required this.osType,
        required this.version,
    });

    factory AppVersionData.fromJson(Map<String, dynamic> json) => AppVersionData(
        osType: json["OS_Type"],
        version: json["Version"],
    );

    Map<String, dynamic> toJson() => {
        "OS_Type": osType,
        "Version": version,
    };
}
