class ApiUrl {
  static const baseUrls = "ivan-portofolio.xyz";

  // authentication urls
  static const logiUrl = "todoapp/api/Auth/login-user";
  static const registerUser = "todoapp/api/Auth/register-user";
  static const getUser = "todoapp/api/Auth/get-username";

  // connection urls
  static const sendUserConenction = "todoapp/api/Connection/send-connection";
  static const getIsConnected = "todoapp/api/Connection/get-is-connected";
  static const getRequestConnectionByUser =
      "todoapp/api/Connection/get-reques-connection";
  static const getUserById = "todoapp/api/Auth/get-userid";
  static const getRequestConnectionToUser =
      "todoapp/api/Connection/get-requested-connection";
}
