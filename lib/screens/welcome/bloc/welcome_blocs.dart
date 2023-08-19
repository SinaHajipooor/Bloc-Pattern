import 'package:bloc/bloc.dart';
import 'package:bloc_pattern/screens/welcome/bloc/welcome_events.dart';
import 'package:bloc_pattern/screens/welcome/bloc/welcome_states.dart';

class WelcomeBlock extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBlock() : super(WelcomeState()) {
    on<WelcomeEvent>((event, emit) {
      emit(WelcomeState(page: state.page));
    });
  }
}
