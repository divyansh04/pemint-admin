// To parse this JSON data, do
//
//     final demandsAgainstPartnerResponse = demandsAgainstPartnerResponseFromJson(jsonString);

import 'dart:convert';

DemandsAgainstPartnerResponse demandsAgainstPartnerResponseFromJson(String str) => DemandsAgainstPartnerResponse.fromJson(json.decode(str));

String demandsAgainstPartnerResponseToJson(DemandsAgainstPartnerResponse data) => json.encode(data.toJson());

class DemandsAgainstPartnerResponse {
    int statusCode;
    bool success;
    String message;
    DemandsAgainstPartnerData data;

    DemandsAgainstPartnerResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.data,
    });

    factory DemandsAgainstPartnerResponse.fromJson(Map<String, dynamic> json) => DemandsAgainstPartnerResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: DemandsAgainstPartnerData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class DemandsAgainstPartnerData {
    List<DemandResponse> demandResponse;
    dynamic previousOffset;
    dynamic previousEvaluatedKey;
    dynamic nextPageOffset;
    dynamic lastEvaluatedKey;

    DemandsAgainstPartnerData({
        required this.demandResponse,
        required this.previousOffset,
        required this.previousEvaluatedKey,
        required this.nextPageOffset,
        required this.lastEvaluatedKey,
    });

    factory DemandsAgainstPartnerData.fromJson(Map<String, dynamic> json) => DemandsAgainstPartnerData(
        demandResponse: List<DemandResponse>.from(json["demandResponse"].map((x) => DemandResponse.fromJson(x))),
        previousOffset: json["previousOffset"],
        previousEvaluatedKey: json["previousEvaluatedKey"],
        nextPageOffset: json["nextPageOffset"],
        lastEvaluatedKey: json["lastEvaluatedKey"],
    );

    Map<String, dynamic> toJson() => {
        "demandResponse": List<dynamic>.from(demandResponse.map((x) => x.toJson())),
        "previousOffset": previousOffset,
        "previousEvaluatedKey": previousEvaluatedKey,
        "nextPageOffset": nextPageOffset,
        "lastEvaluatedKey": lastEvaluatedKey,
    };
}

class DemandResponse {
    String invoiceNo;
    DateTime invoiceDate;
    String orderNo;
    String description;
    String transactionId;
    DateTime modifiedAt;
    String transactionUrl;
    String customerId;
    String demandId;
    String paymentStatus;
    String partnerId;
    String customerEmailId;
    int amount;
    String customerMobileNo;
    DateTime dueDate;
    DateTime createdAt;
    String customerName;

    DemandResponse({
        required this.invoiceNo,
        required this.invoiceDate,
        required this.orderNo,
        required this.description,
        required this.transactionId,
        required this.modifiedAt,
        required this.transactionUrl,
        required this.customerId,
        required this.demandId,
        required this.paymentStatus,
        required this.partnerId,
        required this.customerEmailId,
        required this.amount,
        required this.customerMobileNo,
        required this.dueDate,
        required this.createdAt,
        required this.customerName,
    });

    factory DemandResponse.fromJson(Map<String, dynamic> json) => DemandResponse(
        invoiceNo: json["InvoiceNo"],
        invoiceDate: DateTime.parse(json["InvoiceDate"]),
        orderNo: json["OrderNo"],
        description: json["Description"],
        transactionId: json["TransactionId"],
        modifiedAt: DateTime.parse(json["ModifiedAt"]),
        transactionUrl: json["TransactionUrl"],
        customerId: json["CustomerId"],
        demandId: json["DemandId"],
        paymentStatus: json["PaymentStatus"],
        partnerId: json["PartnerId"],
        customerEmailId: json["CustomerEmailId"],
        amount: json["Amount"],
        customerMobileNo: json["CustomerMobileNo"],
        dueDate: DateTime.parse(json["DueDate"]),
        createdAt: DateTime.parse(json["CreatedAt"]),
        customerName: json["CustomerName"],
    );

    Map<String, dynamic> toJson() => {
        "InvoiceNo": invoiceNo,
        "InvoiceDate": "${invoiceDate.year.toString().padLeft(4, '0')}-${invoiceDate.month.toString().padLeft(2, '0')}-${invoiceDate.day.toString().padLeft(2, '0')}",
        "OrderNo": orderNo,
        "Description": description,
        "TransactionId": transactionId,
        "ModifiedAt": modifiedAt.toIso8601String(),
        "TransactionUrl": transactionUrl,
        "CustomerId": customerId,
        "DemandId": demandId,
        "PaymentStatus": paymentStatus,
        "PartnerId": partnerId,
        "CustomerEmailId": customerEmailId,
        "Amount": amount,
        "CustomerMobileNo": customerMobileNo,
        "DueDate": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
        "CreatedAt": createdAt.toIso8601String(),
        "CustomerName": customerName,
    };
}
