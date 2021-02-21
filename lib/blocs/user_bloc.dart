import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:teste_green/blocs/user_repository.dart';
import 'package:teste_green/models/users_model.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(null);
  @override
  UserState get initialState => LoadingState();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    LoadingState();
    if (event is LoadingSucessUserEvent) {
      yield* _mapUsersLoadedToState();
    }
  }

  Stream<UserState> _mapUsersLoadedToState() async* {
    try {
      var users = (await this.repository.getAllUsers());
      yield LoadedSucessState(users);
    } catch (_) {
      yield ErrorState("Erro ao carregar Usuários.");
    }
  }
}
