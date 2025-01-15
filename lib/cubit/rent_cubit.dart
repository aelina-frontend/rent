import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/rent_data.dart';

part 'rent_state.dart';

class RentCubit extends Cubit<RentState> {
  RentCubit() : super(RentInitial());

void loadingRent(){
  try{
    emit(RentLoading());
    if(categories.isNotEmpty){
      Future.delayed(Duration(seconds: 1), (){
        final int index = categories.length -1;
        print(index);
        emit(RentSuccess(categories: categories),);
      });
    }else{
      emit(RentError(error: 'Мы не можем загрузить данные'));
    }
  }
  catch(e){
    emit(RentError(error: 'Произошла ошибка $e'));
  }
}
}
