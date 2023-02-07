part of 'notification_detail_cubit.dart';

class NotificationDetailState extends Equatable {
  const NotificationDetailState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final NotificationDetailModel item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];

  NotificationDetailState copyWith({
    ItemDetailStatus? status,
    NotificationDetailModel? item,
    String? errorMsg,
  }) {
    return NotificationDetailState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}
