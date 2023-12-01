class NetworkConstant {
  static const String BASE_URL =
      'https://nxwuup3dti.execute-api.us-east-1.amazonaws.com/production';
  // static const String LOCAL_BASE_URL = 'http://192.168.1.53:8080';
  static const String END_POINT_CHECK_VERSION = '/get-version';
  static const String END_POINT_SIGNUP = '/admin/user/user-create';
  static const String END_POINT_LOGIN = '/admin/user/login';
  static const String END_POINT_RESENDOTP = '/admin/user/resend-otp';
  static const String END_POINT_VERIFYOTP = '/admin/user/confirm-signup';
}
