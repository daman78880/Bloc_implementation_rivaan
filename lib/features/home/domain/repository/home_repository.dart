import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/home_model.dart';

abstract interface class HomeRepository{
  Future<Either<Failure, HomeModel>> getList({
    required  int pageNo
  });
}