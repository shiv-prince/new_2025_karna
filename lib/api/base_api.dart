const String apiBaseUrl =
    "https://8f60-2405-201-d004-b1b7-f519-bdb4-52bb-8228.ngrok-free.app";

class ApiBase {
  //get user from the data base
  static const getuser = "/users/find_user/{c_number}";
  //create new user
  static const createuser = "/users/create_user";
  //insert test result of single user
  static const insertresult = "/users/insert_response";
  //get test result of single user
  static const getsingleuserresult = "/users/get_user/{c_number}/{c_name}";
}
