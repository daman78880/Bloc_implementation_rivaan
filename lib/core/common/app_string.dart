import 'package:flutter_localization/flutter_localization.dart';
// class Daman{
//   static const  d='d';
// }
// class Daman{
//   Daman._();
//   static const  d='d';
// }
// abstract mixin class Daman{
//   static const  d='d';
// }
// class testing with Daman{
//   void test(){
//     var s = Daman.d;
//     // var d = Daman();
//   }
// }
class AppString {
  AppString._();

  static const home = 'Home';


  static const testing = 'You have pushed the button this many times:';

  //Api call error
  static const typeError = "Type error.";
  static const cancelRequest = "Request to API server was cancelled";
  static const connectionTimeOut = "Connection timeout with API server";
  static const receiveTimeOut = "Receive timeout in connection with API server";
  static const sendTimeOut = "Send timeout in connection with API server";
  static const socketException = "Check your internet connection";
  static const unknownError = "Something went wrong";
  static const duplicateEmail = "Email has already been taken";

  //Status code
  static const badRequest = "Bad request";
  static const unauthorized = "Unauthorized";
  static const forbidden = "Forbidden";
  static const notFound = "Not Data found";
  static const internalServerError = "Internal server error";
  static const badGateway = "Bad gateway";
  static const appFont = "Roboto";


  static const Map<String, dynamic> EN = {
    home: 'Home',
    testing: 'You have pushed the button this many times: english',
    cancelRequest: 'Localization',
    connectionTimeOut: 'This is %a package, version %a.',
  };
  static const Map<String, dynamic> JA = {
    home: '家',
    testing: 'You have pushed the button this many times: Ja',
    connectionTimeOut: 'This is %a package, version %a.',
  };

  static const noConnectionErrorMessage = 'Not connected to a network!';
}

mixin MapLocaleList {
  static const types = [
    MapLocale(
      'en',
      AppString.EN,
      countryCode: 'US',
    ),
    MapLocale(
      'ja',
      AppString.JA,
      countryCode: 'JP',
    ),
  ];
}
