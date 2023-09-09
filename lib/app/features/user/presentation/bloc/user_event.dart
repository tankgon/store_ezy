part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class UserFirstLoadEvent extends UserEvent {
  UserFirstLoadEvent();
}

class UserFetchEvent extends UserEvent {
  UserFetchEvent();
}
