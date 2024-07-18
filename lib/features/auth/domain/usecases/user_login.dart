import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:bloc_implementation_rivaan/features/auth/data/models/login_parsing_model.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/auth_repository.dart';

class UserLogin implements UseCase<LoginModel, LoginParsingModel> {
  final AuthRepository authRepository;
  const UserLogin(this.authRepository);

  @override
  Future<Either<Failure, LoginModel>> call(LoginParsingModel params) async {
    return await authRepository.loginWithEmailPassword(params: params,
    );
  }
}

