
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'res_states.dart';


class ResDetailCubit extends Cubit<RestaurantStates> {
  ResDetailCubit() : super(InitialResState());

  static ResDetailCubit get(context) => BlocProvider.of(context);

  bool isFav=false;

  void changeFav(){
    isFav = !isFav;
    emit(ChangeFavResState());
  }


}