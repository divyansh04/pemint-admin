// To parse this JSON data, do
//
//     final dashboardDataResponse = dashboardDataResponseFromJson(jsonString);

import 'dart:convert';

DashboardDataResponse dashboardDataResponseFromJson(String str) =>
    DashboardDataResponse.fromJson(json.decode(str));

String dashboardDataResponseToJson(DashboardDataResponse data) =>
    json.encode(data.toJson());

class DashboardDataResponse {
  int statusCode;
  bool success;
  String message;
  DashboardData data;

  DashboardDataResponse({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.data,
  });

  factory DashboardDataResponse.fromJson(Map<String, dynamic> json) =>
      DashboardDataResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: DashboardData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class DashboardData {
  String partnerId;
  DateTime fromDate;
  DateTime toDate;
  int totalDemandAmount;
  int totalDemandCount;
  int totalCollection;
  int totalCollectionCount;
  int totalOutstandingAmount;
  int totalOutsandingCount;

  DashboardData({
    required this.partnerId,
    required this.fromDate,
    required this.toDate,
    required this.totalDemandAmount,
    required this.totalDemandCount,
    required this.totalCollection,
    required this.totalCollectionCount,
    required this.totalOutstandingAmount,
    required this.totalOutsandingCount,
  });

  factory DashboardData.fromJson(Map<String, dynamic> json) => DashboardData(
        partnerId: json["PartnerId"],
        fromDate: DateTime.parse(json["FromDate"]),
        toDate: DateTime.parse(json["ToDate"]),
        totalDemandAmount: json["TotalDemandAmount"],
        totalDemandCount: json["TotalDemandCount"],
        totalCollection: json["TotalCollection"],
        totalCollectionCount: json["TotalCollectionCount"],
        totalOutstandingAmount: json["TotalOutstandingAmount"],
        totalOutsandingCount: json["TotalOutsandingCount"],
      );

  Map<String, dynamic> toJson() => {
        "PartnerId": partnerId,
        "FromDate":
            "${fromDate.year.toString().padLeft(4, '0')}-${fromDate.month.toString().padLeft(2, '0')}-${fromDate.day.toString().padLeft(2, '0')}",
        "ToDate":
            "${toDate.year.toString().padLeft(4, '0')}-${toDate.month.toString().padLeft(2, '0')}-${toDate.day.toString().padLeft(2, '0')}",
        "TotalDemandAmount": totalDemandAmount,
        "TotalDemandCount": totalDemandCount,
        "TotalCollection": totalCollection,
        "TotalCollectionCount": totalCollectionCount,
        "TotalOutstandingAmount": totalOutstandingAmount,
        "TotalOutsandingCount": totalOutsandingCount,
      };
}
