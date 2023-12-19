part of 'get_advice_cubit.dart';

@immutable
class GetAdviceState {}

class GetAdviceInitial extends GetAdviceState {}

class GetAdviceSuccess extends GetAdviceState {
  final String advice;

  GetAdviceSuccess(this.advice);
}

class GetAdviceFailed extends GetAdviceState {
  final String error;
  GetAdviceFailed(this.error);
}
