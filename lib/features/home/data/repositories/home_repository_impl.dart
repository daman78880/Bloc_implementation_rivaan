import 'package:bloc_implementation_rivaan/core/error/failures.dart';

import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/network/connection_checker.dart';
import '../../domain/repository/home_repository.dart';
import '../datasource/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  HomeRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, HomeModel>> getList({required int pageNo}) async {
    return await remoteDataSource.getUserList(params: pageNo);
  }
}


// @override
// Future<Either<Failure, HomeModel>> getList({required int pageNo}) async {
//     try {
//       if (!await (connectionChecker.isConnected)) {
//         return left(Failure(AppString.noConnectionErrorMessage));
//       }
//       final user = await remoteDataSource.getUserList(params: pageNo);
//       return right(user);
//     } catch (e) {
//       if (e is ServerException) {
//         return left(Failure(e.message.toString()));
//       } else {
//         return left(Failure(e.toString()));
//       }
//     }
//   }
// }
