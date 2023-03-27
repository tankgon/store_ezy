part of 'notification_main_cubit.dart';

class NotificationMainState extends Equatable {
  const NotificationMainState({
    this.status = ItemDefaultStatus.initial,
    this.updateItem,
    this.hasNew,
    this.error,
  });

  final ItemDefaultStatus status;
  final NotificationDetailModel? updateItem;
  final bool? hasNew;
  final Object? error;

  @override
  List<Object?> get props => [status, updateItem, hasNew, error];

  NotificationMainState copyWith({
    ItemDefaultStatus? status,
    NotificationDetailModel? updateItem,
    bool? hasNew,
    Object? error,
  }) {
    return NotificationMainState(
      status: status ?? this.status,
      updateItem: updateItem ?? this.updateItem,
      hasNew: hasNew ?? this.hasNew,
      error: error ?? this.error,
    );
  }
}
