import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/login_parsing_model.dart';

abstract interface class AuthRepository{
    // Future<Either<Failure, LoginModel>> signUpWithEmailPassword({
    //   required  LoginParsingModel params
  // });
  Future<Either<Failure, LoginModel>> loginWithEmailPassword({
   required  LoginParsingModel params
  });
}