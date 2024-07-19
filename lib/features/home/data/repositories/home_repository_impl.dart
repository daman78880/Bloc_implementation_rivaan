import 'package:bloc_implementation_rivaan/core/error/failures.dart';

import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/connection_checker.dart';
import '../../domain/repository/home_repository.dart';
import '../datasource/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final ConnectionChecker connectionChecker;

  HomeRepositoryImpl(
    this.remoteDataSource,
    this.connectionChecker,
  );

  @override
  Future<Either<Failure, HomeModel>> getList({required int pageNo}) async {
    try {
      if (!await (connectionChecker.isConnected)) {
        return left(Failure(Constants.noConnectionErrorMessage));
      }
      final user = await remoteDataSource.getUserList(params: pageNo);
      return right(user);
    } catch (e) {
      if (e is ServerException) {
        return left(Failure(e.message.toString()));
      } else {
        return left(Failure(e.toString()));
      }
    }
  }
}
