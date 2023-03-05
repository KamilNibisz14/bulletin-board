import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_bulletin_board_event.dart';
part 'main_bulletin_board_state.dart';

class MainBulletinBoardBloc extends Bloc<MainBulletinBoardEvent, MainBulletinBoardState> {
  MainBulletinBoardBloc() : super(MainBulletinBoardInitial()) {
    on<MainBulletinBoardEvent>((event, emit) {
    });
  }
}
