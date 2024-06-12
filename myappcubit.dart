import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/models/myapp_state.dart';

class MyappCubit extends Cubit<MyappState> {
  MyappCubit() : super(MyappState());
  void changImage() {
    emit(ChangingImageState());
  }
}
