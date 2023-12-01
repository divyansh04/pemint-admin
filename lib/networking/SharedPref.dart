import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String language = 'language';
  static const String sessionId = 'sessionId';
  static const String refreshToken = 'refreshToken';
  static const String idToken = 'idToken';
  static const String accessToken = 'accessToken';
  static const String tokenExpiry = 'tokenExpiry';
  static const String customerId = 'customerId';
  static const String groupId = 'groupId';
  static const String groupName = 'groupName';
  static const String groupChatInfo = 'groupChatInfo';
  static const String myPaymentInfo = 'myPaymentInfo';
  static const String customerMeInfo = 'customerMeInfo';
  static const String customerName = 'customerName';
  Future<void> logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  Future<void> setLanguage(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(language, val);
  }

  Future<String?> getLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(language);
  }

  Future<void> setSession(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(sessionId, val);
  }

  Future<void> setRefreshToken(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(refreshToken, val);
  }

  Future<void> setIdToken(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(idToken, val);
  }

  Future<void> setAccessToken(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(accessToken, val);
  }

  Future<void> setTokenExpiry(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(tokenExpiry, val);
  }

  Future<void> setCustomerId(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(customerId, val);
  }

  Future<void> setGroupId(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(groupId, val);
  }

  Future<void> setGroupName(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(groupName, val);
  }

  Future<void> setCustomerName(String val) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(customerName, val);
  }

  Future<void> saveTokenExpiryTimestamp(int expiryTimestamp) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(tokenExpiry, expiryTimestamp);
  }

  Future<void> saveLogin(bool isLogin) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', isLogin);
  }

  Future<void> setAppLock(String appLock) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('appLock', appLock);
  }

  Future<String?> getAppLock() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('appLock');
  }

  Future<bool?> isLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLogin');
  }

  Future<void> setIsMFI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAlreadyMFI', true);
  }

  Future<bool?> isMFI() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAlreadyMFI');
  }

  Future<int?> getTokenExpiryTimestamp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(tokenExpiry);
  }

  Future<String?> getCustomerName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(customerName);
  }

  Future<String?> getGroupId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(groupId);
  }

  Future<String?> getGroupName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(groupName);
  }

  Future<String?> getCustomerId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(customerId);
  }

  Future<String?> getTokenExpiry() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tokenExpiry);
  }

  Future<String?> getSession() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(sessionId);
  }

  Future<String?> getRefreshToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(refreshToken);
  }

  Future<String?> getIdToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(idToken);
  }

  Future<String?> getAccessToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(accessToken);
  }
}
