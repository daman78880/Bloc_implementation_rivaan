import 'package:bloc_implementation_rivaan/core/usecase/usecase.dart';

import '../../../auth/domain/repository/auth_repository.dart';

class HomeUseCase implements UseCase<LoginModel, int> {
  final AuthRepository authRepository;
  const HomeUseCase(this.authRepository);

}

