import 'package:bloc_implementation_rivaan/core/common/app_extension.dart';
import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/api_config.dart';
import '../../../../core/network/dio_client.dart';
import '../models/login_parsing_model.dart';

abstract interface class AuthRemoteDataSource {
  // Future<LoginModel> signUpWithEmailPassword({
  //   required  LoginParsingModel params
  // });

  Future<LoginModel> loginWithEmailPassword(
      {required LoginParsingModel params});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<LoginModel> loginWithEmailPassword(
      {required LoginParsingModel params}) async {
    try {
      final response = await dioClient.dio.post(ApiConfig.login,
          options: Options(
            contentType: 'application/json',
          ),
          data: params.toJson());
      if (response.statusCode.success) {
        return LoginModel.fromJson(response.data);
      }
      throw ServerException(response.statusMessage ?? '');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

// @override
// Future<LoginModel> signUpWithEmailPassword({
//   required String name,
//   required String email,
//   required String password,
// }) async {
//   try {
//     final response = await supabaseClient.auth.signUp(
//       password: password,
//       email: email,
//       data: {
//         'name': name,
//       },
//     );
//     if (response.user == null) {
//       throw const ServerException('User is null!');
//     }
//     return LoginModel.fromJson(response.user!.toJson());
//   } on AuthException catch (e) {
//     throw ServerException(e.message);
//   } catch (e) {
//     throw ServerException(e.toString());
//   }
// }
}
