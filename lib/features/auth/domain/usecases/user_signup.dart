import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:bloc_implementation_rivaan/features/auth/data/models/login_parsing_model.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/auth_repository.dart';

class UserSignup implements UseCase<LoginModel, LoginParsingModel> {
  final AuthRepository authRepository;

  const UserSignup(this.authRepository);

  @override
  Future<Either<Failure, LoginModel>> call(LoginParsingModel params) async {
    return await authRepository.signUpWithEmailPassword(params: params,
    );
  }
}

