// To parse this JSON data, do
//
//     final transactionDetailByIdResponse = transactionDetailByIdResponseFromJson(jsonString);

import 'dart:convert';

TransactionDetailByIdResponse transactionDetailByIdResponseFromJson(
        String str) =>
    TransactionDetailByIdResponse.fromJson(json.decode(str));

String transactionDetailByIdResponseToJson(
        TransactionDetailByIdResponse data) =>
    json.encode(data.toJson());

class TransactionDetailByIdResponse {
  int statusCode;
  bool success;
  String message;
  TransactionDetailData data;

  TransactionDetailByIdResponse({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.data,
  });

  factory TransactionDetailByIdResponse.fromJson(Map<String, dynamic> json) =>
      TransactionDetailByIdResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: TransactionDetailData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class TransactionDetailData {
  String orderStatus;
  String failureMessage;
  String partnerId;
  String emiMonth;
  String bankRefNo;
  String fromCustomerMobileNo;
  String currency;
  String lan;
  String groupName;
  String trackingId;
  DateTime createdAt;
  String statusCode;
  String paymentMode;
  String transactionId;
  String fromCustomerId;
  int payableAmount;
  String transDate;
  String toCustomerName;
  String toCustomerMobileNo;
  String fromCustomerName;
  String type;
  String statusMessage;
  String notes;
  String cardName;
  String modifedAt;
  int amount;
  String toCustomerId;

  TransactionDetailData({
    required this.orderStatus,
    required this.failureMessage,
    required this.partnerId,
    required this.emiMonth,
    required this.bankRefNo,
    required this.fromCustomerMobileNo,
    required this.currency,
    required this.lan,
    required this.groupName,
    required this.trackingId,
    required this.createdAt,
    required this.statusCode,
    required this.paymentMode,
    required this.transactionId,
    required this.fromCustomerId,
    required this.payableAmount,
    required this.transDate,
    required this.toCustomerName,
    required this.toCustomerMobileNo,
    required this.fromCustomerName,
    required this.type,
    required this.statusMessage,
    required this.notes,
    required this.cardName,
    required this.modifedAt,
    required this.amount,
    required this.toCustomerId,
  });

  factory TransactionDetailData.fromJson(Map<String, dynamic> json) => TransactionDetailData(
        orderStatus: json["Order_Status"],
        failureMessage: json["Failure_Message"],
        partnerId: json["Partner_ID"],
        emiMonth: json["EMI_Month"],
        bankRefNo: json["Bank_Ref_No"],
        fromCustomerMobileNo: json["From_Customer_Mobile_No"],
        currency: json["Currency"],
        lan: json["LAN"],
        groupName: json["Group_Name"],
        trackingId: json["Tracking_Id"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        statusCode: json["Status_Code"],
        paymentMode: json["Payment_Mode"],
        transactionId: json["Transaction_ID"],
        fromCustomerId: json["From_Customer_ID"],
        payableAmount: json["Payable_Amount"],
        transDate: json["Trans_Date"],
        toCustomerName: json["To_Customer_Name"],
        toCustomerMobileNo: json["To_Customer_Mobile_No"],
        fromCustomerName: json["From_Customer_Name"],
        type: json["Type"],
        statusMessage: json["Status_Message"],
        notes: json["Notes"],
        cardName: json["Card_Name"],
        modifedAt: json["ModifedAt"],
        amount: json["Amount"],
        toCustomerId: json["To_Customer_ID"],
      );

  Map<String, dynamic> toJson() => {
        "Order_Status": orderStatus,
        "Failure_Message": failureMessage,
        "Partner_ID": partnerId,
        "EMI_Month": emiMonth,
        "Bank_Ref_No": bankRefNo,
        "From_Customer_Mobile_No": fromCustomerMobileNo,
        "Currency": currency,
        "LAN": lan,
        "Group_Name": groupName,
        "Tracking_Id": trackingId,
        "CreatedAt": createdAt.toIso8601String(),
        "Status_Code": statusCode,
        "Payment_Mode": paymentMode,
        "Transaction_ID": transactionId,
        "From_Customer_ID": fromCustomerId,
        "Payable_Amount": payableAmount,
        "Trans_Date": transDate,
        "To_Customer_Name": toCustomerName,
        "To_Customer_Mobile_No": toCustomerMobileNo,
        "From_Customer_Name": fromCustomerName,
        "Type": type,
        "Status_Message": statusMessage,
        "Notes": notes,
        "Card_Name": cardName,
        "ModifedAt": modifedAt,
        "Amount": amount,
        "To_Customer_ID": toCustomerId,
      };
}
