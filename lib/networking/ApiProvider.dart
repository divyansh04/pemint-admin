import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:async/async.dart';
import 'package:path/path.dart';
import 'package:pemint_admin_app/model/api_response/BaseResponse.dart';
import 'package:pemint_admin_app/networking/CustomExeptions.dart';
import 'NetworkConstant.dart';
import 'SharedPref.dart';

class ApiProvider {
  final String baseUrl = NetworkConstant.BASE_URL;

  Future<BaseResponses> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(
        Uri.parse(baseUrl + url),
      );
      responseJson = _response(response);
      return responseJson;
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> getAfterAuthWihAccessToken(String url) async {
    SharedPref box = SharedPref();
    String? token = await box.getAccessToken();
    var responseJson;
    try {
      final response = await http.get(
        Uri.parse(baseUrl + url),
        headers: {"authorization": token!, "Accept": "application/json"},
      );
      // debugger();
      // print(response.body);
      responseJson = _response(response);
    } catch (e) {
      // debugger();
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> getAfterAuthWihIdToken(String url) async {
    SharedPref box = SharedPref();
    String? token = await box.getIdToken();
    var responseJson;
    try {
      final response = await http.get(
        Uri.parse(baseUrl + url),
        headers: {"authorization": token!, "Accept": "application/json"},
      );
      // debugger();
      // print(response.body);
      responseJson = _response(response);
    } catch (e) {
      // debugger();
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<BaseResponses?> postBeforeAuth(Map parameter, String url) async {
    // debugger();
    var responseJson;
    try {
      final response = await http.post(Uri.parse(baseUrl + url),
          headers: {'Content-type': 'application/json'},
          body: json.encode(parameter));
      responseJson = _response(response);
      return responseJson;
    } catch (e) {
      print(e);
      throw FetchDataException('No Internet connection');
    }
  }

  Future<dynamic> postAfterAuth(Map parameter, String url) async {
    var responseJson;

    try {
      final response = await http.post(Uri.parse(baseUrl + url),
          headers: {'Content-type': 'application/json'},
          body: json.encode(parameter));

      responseJson = _response(response);
    } catch (e) {
      print(e);

      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthWithIdToken(Map parameter, String url) async {
    var responseJson;
    String? token = await SharedPref().getIdToken();
    // debugger();
    print(token);
    try {
      final response = await http.post(Uri.parse(baseUrl + url),
          headers: {
            'Content-type': 'application/json',
            'authorization': 'Bearer ' + token!,
          },
          body: json.encode(parameter));
      // debugger();
      // print(response);
      responseJson = _response(response);
    } catch (e) {
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthWithAuthToken(Map parameter, String url) async {
    var responseJson;
    String? token = await SharedPref().getAccessToken();
    // debugger();
    print(token);
    try {
      final response = await http.post(Uri.parse(baseUrl + url),
          headers: {
            'Content-type': 'application/json',
            'authorization': 'Bearer ' + token!,
          },
          body: json.encode(parameter));
      // debugger();
      // print(response);
      responseJson = _response(response);
    } catch (e) {
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> putAfterAuthWithIdToken(Map parameter, String url) async {
    var responseJson;
    String? token = await SharedPref().getIdToken();
    // debugger();
    print(token);
    try {
      final response = await http.put(Uri.parse(baseUrl + url),
          headers: {
            'Content-type': 'application/json',
            'authorization': token!,
          },
          body: json.encode(parameter));
      // debugger();
      // print(response);
      responseJson = _response(response);
    } catch (e) {
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthCustom(Map parameter, String url) async {
    var responseJson;
    String? token = await SharedPref().getAccessToken();
    try {
      final response = await http.post(Uri.parse(baseUrl + url),
          headers: {
            'Content-type': 'application/json',
            'authorization': 'Bearer ' + token!,
          },
          body: json.encode(parameter));

      return response.body;
    } catch (e) {
      print(e);

      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthWithFromDataParameter(
      Map parameter, String url) async {
    var responseJson;
    String? token = await SharedPref().getAccessToken();
    try {
      final response = await http.post(Uri.parse(baseUrl + url),
          headers: {
            'authorization': 'Bearer ' + token!,
          },
          body: parameter);

      return json.decode(response.body);
    } catch (e) {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthWithMultipart(
      Map parameter, String url, List<File> files) async {
    SharedPref box = SharedPref();
    String? token = await box.getAccessToken();

    var responseJson;
    Map<String, String> headers = {
      "authorization": "Bearer " + token!,
      "Accept": "application/json"
    };

    try {
      final response = http.MultipartRequest("POST", Uri.parse(baseUrl + url));
      response.headers.addAll(headers);
      for (var i = 0; i < parameter.length; i++) {
        response.fields[parameter.keys.elementAt(i)] =
            parameter.values.elementAt(i);
      }

      await Future.forEach(
        files,
        (File file) async => {
          response.files.add(
            http.MultipartFile(
              'file',
              (http.ByteStream(file.openRead())).cast(),
              await file.length(),
              filename: basename(file.path),
            ),
          )
        },
      );

      await response.send().then((value) async {
        await http.Response.fromStream(value).then((response) {
          responseJson = _response(response);
        });
      });
    } catch (e) {
      // debugger();
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthMultipart(
      Map parameter, String url, File files) async {
    SharedPref box = SharedPref();
    String? token = await box.getAccessToken();
    // debugger();
    // print(files);
    var responseJson;
    Map<String, String> headers = {
      "authorization": "Bearer " + token!,
      "Accept": "application/json"
    };

    try {
      final response = http.MultipartRequest("POST", Uri.parse(baseUrl + url));
      response.headers.addAll(headers);
      for (var i = 0; i < parameter.length; i++) {
        response.fields[parameter.keys.elementAt(i)] =
            parameter.values.elementAt(i);
      }

      response.files.add(
        http.MultipartFile(
          'file',
          (http.ByteStream(files.openRead())).cast(),
          await files.length(),
          filename: basename(files.path),
        ),
      );

      await response.send().then((value) async {
        await http.Response.fromStream(value).then((response) {
          responseJson = _response(response);
        });
      });
    } catch (e) {
      // debugger();
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAfterAuthMultipartForUploadBusinessPhoto(
      Map parameter, String url, File files) async {
    SharedPref box = SharedPref();
    String? token = await box.getAccessToken();
    // debugger();
    // print(files);
    var responseJson;
    Map<String, String> headers = {
      "authorization": "Bearer " + token!,
      "Accept": "application/json"
    };

    try {
      final response = http.MultipartRequest("POST", Uri.parse(baseUrl + url));
      response.headers.addAll(headers);
      for (var i = 0; i < parameter.length; i++) {
        response.fields[parameter.keys.elementAt(i)] =
            parameter.values.elementAt(i);
      }

      response.files.add(
        http.MultipartFile(
          'image_param_name',
          (http.ByteStream(files.openRead())).cast(),
          await files.length(),
          filename: basename(files.path),
        ),
      );

      await response.send().then((value) async {
        await http.Response.fromStream(value).then((response) {
          responseJson = _response(response);
        });
      });
    } catch (e) {
      // debugger();
      print(e);
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  // Future<dynamic> putAfterAuthWithAuthToken(Map parameter, String url) async {
  //   var responseJson;
  //   String? token = await SharedPref().getAccessToken();
  //   try {
  //     final response = await http.put(Uri.parse(baseUrl + url),
  //         headers: {
  //           'Content-type': 'application/json',
  //           'authorization': 'Bearer ' + token!,
  //         },
  //         body: json.encode(parameter));
  //     responseJson = _response(response);
  //   } catch (e) {
  //     print(e);
  //     throw FetchDataException('No Internet connection');
  //   }
  //   return responseJson;
  // }

  Future<BaseResponses> delete(String url) async {
    var responseJson;
    String? token = await SharedPref().getAccessToken();
    try {
      final response = await http.delete(
        Uri.parse(baseUrl + url),
        headers: {
          'Content-type': 'application/json',
          'authorization': 'Bearer ${token!}',
        },
      );
      // debugger();
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson =
            BaseResponses.fromJson(json.decode(response.body.toString()));
        print(responseJson.message);
        return responseJson;
      // case 400:
      //   throw BadRequestException(response.body.toString());
      // case 401:

      // case 403:
      //   throw UnauthorisedException(response.body.toString());
      // case 500:
      //   var responseJson = BaseResponses(data: {},
      //   message: response.body,
      //   statusCode: response.statusCode
      //   );
      //   print(responseJson.message);
      //   return responseJson;
      default:
        var responseJson = BaseResponses(
            data: {},
            message: json.decode(response.body)['message'],
            statusCode: response.statusCode);
        print(responseJson.message);
        return responseJson;
    }
  }

  dynamic _responseFromStream(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
