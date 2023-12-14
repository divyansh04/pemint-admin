// To parse this JSON data, do
//
//     final demandsAgainstPartnerResponse = demandsAgainstPartnerResponseFromJson(jsonString);

import 'dart:convert';

DemandsAgainstPartnerResponse demandsAgainstPartnerResponseFromJson(
        String str) =>
    DemandsAgainstPartnerResponse.fromJson(json.decode(str));

String demandsAgainstPartnerResponseToJson(
        DemandsAgainstPartnerResponse data) =>
    json.encode(data.toJson());

class DemandsAgainstPartnerResponse {
  int statusCode;
  bool success;
  String message;
  List<DemandsAgainstPartnerData> data;

  DemandsAgainstPartnerResponse({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.data,
  });

  factory DemandsAgainstPartnerResponse.fromJson(Map<String, dynamic> json) =>
      DemandsAgainstPartnerResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: List<DemandsAgainstPartnerData>.from(
            json["data"].map((x) => DemandsAgainstPartnerData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DemandsAgainstPartnerData {
  String invoiceNo;
  DateTime invoiceDate;
  String orderNo;
  String description;
  String transactionId;
  String transactionUrl;
  String customerId;
  String createdAt;
  String demandId;
  String paymentStatus;
  String partnerId;
  String customerEmailId;
  int amount;
  String customerMobileNo;
  DateTime dueDate;
  String customerName;

  DemandsAgainstPartnerData({
    required this.invoiceNo,
    required this.invoiceDate,
    required this.orderNo,
    required this.description,
    required this.transactionId,
    required this.transactionUrl,
    required this.customerId,
    required this.createdAt,
    required this.demandId,
    required this.paymentStatus,
    required this.partnerId,
    required this.customerEmailId,
    required this.amount,
    required this.customerMobileNo,
    required this.dueDate,
    required this.customerName,
  });

  factory DemandsAgainstPartnerData.fromJson(Map<String, dynamic> json) =>
      DemandsAgainstPartnerData(
        invoiceNo: json["InvoiceNo"],
        invoiceDate: DateTime.parse(json["InvoiceDate"]),
        orderNo: json["OrderNo"],
        description: json["Description"],
        transactionId: json["TransactionId"],
        transactionUrl: json["TransactionUrl"],
        customerId: json["CustomerId"],
        createdAt: json["Created_At"],
        demandId: json["DemandId"],
        paymentStatus: json["PaymentStatus"],
        partnerId: json["PartnerId"],
        customerEmailId: json["CustomerEmailId"],
        amount: json["Amount"],
        customerMobileNo: json["CustomerMobileNo"],
        dueDate: DateTime.parse(json["DueDate"]),
        customerName: json["CustomerName"],
      );

  Map<String, dynamic> toJson() => {
        "InvoiceNo": invoiceNo,
        "InvoiceDate":
            "${invoiceDate.year.toString().padLeft(4, '0')}-${invoiceDate.month.toString().padLeft(2, '0')}-${invoiceDate.day.toString().padLeft(2, '0')}",
        "OrderNo": orderNo,
        "Description": description,
        "TransactionId": transactionId,
        "TransactionUrl": transactionUrl,
        "CustomerId": customerId,
        "Created_At": createdAt,
        "DemandId": demandId,
        "PaymentStatus": paymentStatus,
        "PartnerId": partnerId,
        "CustomerEmailId": customerEmailId,
        "Amount": amount,
        "CustomerMobileNo": customerMobileNo,
        "DueDate":
            "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
        "CustomerName": customerName,
      };
}
