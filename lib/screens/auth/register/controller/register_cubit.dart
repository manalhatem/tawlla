import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'register_states.dart';

class RegisterCubit extends Cubit<RegisterStates>{
  RegisterCubit() : super(InitialRegisterState());
  static RegisterCubit get(context)=> BlocProvider.of(context);

  bool isVisible=false;
  void changeVisiblePass(){
    isVisible = !isVisible;
    emit(ChangeVisible());
  }

  bool check=false;

  void changeCheckBox(bool val){
    check = val;
    emit(ChangeCheckBox());
  }

  bool radio=false;
  void toggleRadio(bool value){
    radio = value;
    emit(ChangeRadio());

  }



}