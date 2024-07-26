import 'dart:async';
import 'package:bloc_implementation_rivaan/core/common/app_extension.dart';
import 'package:bloc_implementation_rivaan/core/error/failures.dart';
import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/common/app_string.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/network/api_config.dart';
import '../../../../core/network/connection_checker.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/run_time_catch.dart';

abstract interface class HomeRemoteDataSource {
  Future<Either<Failure, HomeModel>> getUserList({required int params});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioClient dioClient;
  final ConnectionChecker connectionChecker;

  HomeRemoteDataSourceImpl(this.dioClient, this.connectionChecker);

  @override
  Future<Either<Failure, HomeModel>> getUserList({required int params}) async {
    try {
      if (!await (connectionChecker.isConnected)) {
        return left(Failure(AppString.noConnectionErrorMessage));
      }
      final response = await dioClient.dio.get(
        ApiConfig.userList,
        queryParameters: {'page': params},
        options: Options(
          headers: {
            'Authorization': 'Bearer da',
          },
          contentType: 'application/json',
        ),
      );
      if (response.statusCode.success) {
        return right(HomeModel.fromJson(response.data));
      } else {
        return left(Failure('Failed to parse json response'));
      }
    } catch (e) {
      return left(RunTimeCatch.runTimeCatchFun(e));
    }
  }
}
