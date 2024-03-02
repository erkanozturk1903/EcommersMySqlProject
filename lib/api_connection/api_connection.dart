class API {
  static const hostConnect = "http://10.251.12.201/api_clothes_store";
  static const hostConnectUser = "$hostConnect/user";
  static const hostConnectAdmin = "$hostConnect/admin";

  //TODO: LOGIN AND SIGNUP USER
  static const validateEmail = "$hostConnect/user/validate_email.php";
  static const signUp = "$hostConnectUser/signup.php";
  static const login = "$hostConnectUser/login.php";

  //TODO: LOGIN ADMIN
  static const adminLogin = "$hostConnectAdmin/login.php";
}
