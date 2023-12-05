// To parse this JSON data, do
//
//     final createDemandResponse = createDemandResponseFromJson(jsonString);

import 'dart:convert';

CreateDemandResponse createDemandResponseFromJson(String str) => CreateDemandResponse.fromJson(json.decode(str));

String createDemandResponseToJson(CreateDemandResponse data) => json.encode(data.toJson());

class CreateDemandResponse {
    int statusCode;
    bool success;
    String message;
    CreateDemandData data;

    CreateDemandResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory CreateDemandResponse.fromJson(Map<String, dynamic> json) => CreateDemandResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: CreateDemandData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class CreateDemandData {
    String tinyUrl;
    String orderNo;

    CreateDemandData({
        required this.tinyUrl,
        required this.orderNo,
    });

    factory CreateDemandData.fromJson(Map<String, dynamic> json) => CreateDemandData(
        tinyUrl: json["tiny_url"],
        orderNo: json["order_no"],
    );

    Map<String, dynamic> toJson() => {
        "tiny_url": tinyUrl,
        "order_no": orderNo,
    };
}
