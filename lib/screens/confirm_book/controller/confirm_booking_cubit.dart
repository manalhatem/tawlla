
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'confirm_booking_states.dart';


class ConfirmBookingCubit extends Cubit<ConfiromBookingStates> {
  ConfirmBookingCubit() : super(InitialConfirmBookingState());

  static ConfirmBookingCubit get(context) => BlocProvider.of(context);

  int num=3;

  void increaseNum(){
    num++;
    emit(IncreaseNumState());
  }
  void decreaseNum(){
    num--;
    emit(DecreaseNumState());
  }


}