// To parse this JSON documentuploaddata, do
//
//     final documentUploadResponse = documentUploadResponseFromJson(jsonString);

import 'dart:convert';

DocumentUploadResponse documentUploadResponseFromJson(String str) => DocumentUploadResponse.fromJson(json.decode(str));

String documentUploadResponseToJson(DocumentUploadResponse documentuploaddata) => json.encode(documentuploaddata.toJson());

class DocumentUploadResponse {
    int statusCode;
    bool success;
    String message;
    DocumentUploadData documentuploaddata;

    DocumentUploadResponse({
        required this.statusCode,
        required this.success,
        required this.message,
        required this.documentuploaddata,
    });

    factory DocumentUploadResponse.fromJson(Map<String, dynamic> json) => DocumentUploadResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        documentuploaddata: DocumentUploadData.fromJson(json["documentuploaddata"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "documentuploaddata": documentuploaddata.toJson(),
    };
}

class DocumentUploadData {
    String partnerId;
    List<FileStatus> fileStatus;

    DocumentUploadData({
        required this.partnerId,
        required this.fileStatus,
    });

    factory DocumentUploadData.fromJson(Map<String, dynamic> json) => DocumentUploadData(
        partnerId: json["PartnerId"],
        fileStatus: List<FileStatus>.from(json["FileStatus"].map((x) => FileStatus.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "PartnerId": partnerId,
        "FileStatus": List<dynamic>.from(fileStatus.map((x) => x.toJson())),
    };
}

class FileStatus {
    String documentName;
    String downloadUrl;

    FileStatus({
        required this.documentName,
        required this.downloadUrl,
    });

    factory FileStatus.fromJson(Map<String, dynamic> json) => FileStatus(
        documentName: json["DocumentName"],
        downloadUrl: json["DownloadUrl"],
    );

    Map<String, dynamic> toJson() => {
        "DocumentName": documentName,
        "DownloadUrl": downloadUrl,
    };
}
