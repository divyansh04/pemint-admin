class NetworkConstant {
  static const String BASE_URL =
      'https://hfavxx8d4k.execute-api.us-east-1.amazonaws.com/stage';
  // static const String LOCAL_BASE_URL = 'http://192.168.1.53:8080';
  static const String END_POINT_CHECK_VERSION = '/get-version';
  static const String END_POINT_SIGNUP = '/admin/user/user-create';
  static const String END_POINT_LOGIN = '/admin/user/login';
  static const String END_POINT_RESENDOTP = '/admin/user/resend-otp';
  static const String END_POINT_VERIFYOTP = '/admin/user/confirm-signup';
  static const String END_POINT_FORGOTPASSWORD = '/admin/user/forget-password';
  static const String END_POINT_RESETPASSWORD = '/admin/user/reset-password';
  static const String END_POINT_CREATE_DEMAND = '/small-business/create-demand';
  static const String END_POINT_GET_ALL_DEMAND = '/small-business/demand-list';
  static const String END_POINT_TRANSACTION_DETAIL = '/transaction-detail';
}
