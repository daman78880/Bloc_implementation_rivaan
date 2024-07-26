import 'dart:async';

import 'package:dio/dio.dart';

import '../common/app_string.dart';
import '../error/failures.dart';
import 'dio_exception.dart';

class RunTimeCatch{
  static Failure runTimeCatchFun(e){
    if (e is DioException) {
      final String errorMessage = DioExceptions.fromDioError(e).toString();
      return Failure(errorMessage);
    }else if(e is TimeoutException){
      return Failure(AppString.connectionTimeOut);
    } else if(e is TypeError){
      return Failure(AppString.typeError);
    }else {
      print('inside else part of ereror ${e.runtimeType}');
      return Failure(e.toString());
    }
  }
}