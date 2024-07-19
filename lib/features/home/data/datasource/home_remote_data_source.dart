import 'package:bloc_implementation_rivaan/core/common/app_extension.dart';
import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/api_config.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/dio_exception.dart';

abstract interface class HomeRemoteDataSource {
  Future<HomeModel> getUserList({required int params});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioClient dioClient;

  HomeRemoteDataSourceImpl(this.dioClient);

  @override
  Future<HomeModel> getUserList({required int params}) async {
    try {
      final response = await dioClient.dio.post(ApiConfig.userList,
          queryParameters: {'page': params},
          options: Options(
            contentType: 'application/json',
          ));
      if (response.statusCode.success) {
        return HomeModel.fromJson(response.data);
      } else {
        throw ServerException(response.statusMessage ?? '');
      }
    } catch (e) {
      if (e is DioException) {
        final errorMessage = DioExceptions.fromDioError(e).toString();
        throw ServerException(errorMessage);
      } else {
        throw ServerException(e.toString());
      }
      rethrow;
      // throw ServerException(e.toString());
    }
  }
}
