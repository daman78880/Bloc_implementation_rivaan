import 'package:bloc_implementation_rivaan/core/error/failures.dart';
import 'package:bloc_implementation_rivaan/core/usecase/usecase.dart';
import 'package:fpdart/fpdart.dart';
import '../../data/models/home_model.dart';
import '../repository/home_repository.dart';

class HomeUseCase implements UseCase<HomeModel, int> {
  final HomeRepository homeRepository;

  const HomeUseCase(this.homeRepository);

  @override
  Future<Either<Failure, HomeModel>> call(int params) async {
    return await homeRepository.getList(pageNo: params);
  }
}
