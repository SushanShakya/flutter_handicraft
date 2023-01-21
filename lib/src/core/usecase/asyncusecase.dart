import 'package:equatable/equatable.dart';

abstract class AsyncUsecase<R, T> {
  Future<R> call(T param);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
