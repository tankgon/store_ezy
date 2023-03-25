part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {

  const SignUpState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final dynamic item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];
  
  SignUpState copyWith({
      ItemDetailStatus? status,
      dynamic? item,
      String? errorMsg,
  }) {
    return SignUpState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}