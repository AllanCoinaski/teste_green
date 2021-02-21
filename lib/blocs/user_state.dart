part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {
  const UserState();
}

class EmptyState extends UserState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class InitialState extends UserState {
  const InitialState();
  @override
  List<Object> get props => [];
}

class LoadingState extends UserState {
  const LoadingState();
  @override
  List<Object> get props => [];
}

class LoadedSucessState extends UserState {
  final List<User> album;
  const LoadedSucessState(this.album);
  @override
  List<Object> get props => [album];
}

class ErrorState extends UserState {
  final String message;
  const ErrorState(this.message);
  @override
  List<Object> get props => [message];
}
