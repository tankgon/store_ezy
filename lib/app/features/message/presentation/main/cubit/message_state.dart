part of 'message_cubit.dart';

class MessageState extends RequestState {
  const MessageState({
    super.status = ItemStatus.initial,
    required this.message,
    super.error,
  });

  final MessageBaseEntity message;

  @override
  List<Object?> get props => [status, message, error];

  MessageState copyWith({
    ItemStatus? status,
    MessageBaseEntity? message,
    Object? error,
  }) {
    return MessageState(
      status: status ?? this.status,
      message: message ?? this.message,
      error: error ?? this.error,
    );
  }
}
