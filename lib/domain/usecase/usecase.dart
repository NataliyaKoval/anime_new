import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class NoParamsUseCase<Type> {
  Future<Type> call();
}

// This will be used by the code calling the use case whenever the use case
// doesn't accept any parameters.
// class NoParams extends Equatable {
//   @override
//   List<Object> get props => [];
//}
