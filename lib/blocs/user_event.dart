part of 'user_bloc.dart';
@immutable
abstract class UserEvent extends Equatable {
  const UserEvent();
}

class LoadingSucessUserEvent extends UserEvent {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class NetworkErrorEvent extends Error {}
