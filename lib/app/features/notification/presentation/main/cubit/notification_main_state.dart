part of 'notification_main_cubit.dart';

class NotificationMainState extends Equatable {
  const NotificationMainState({
    this.status = ItemDetailStatus.initial,
    this.updateItem,
    this.hasNew,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final NotificationDetailModel? updateItem;
  final bool? hasNew;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, updateItem, hasNew, errorMsg];

  NotificationMainState copyWith({
    ItemDetailStatus? status,
    NotificationDetailModel? updateItem,
    bool? hasNew,
    String? errorMsg,
  }) {
    return NotificationMainState(
      status: status ?? this.status,
      updateItem: updateItem ?? this.updateItem,
      hasNew: hasNew ?? this.hasNew,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}
