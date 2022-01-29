import 'package:flutter/widgets.dart';
import 'package:number_trivia/ui/view_state.dart';

class BaseModel extends ChangeNotifier{
  ViewState viewState = ViewState.Idle;
  void setState(ViewState newState){
    viewState = newState;
  }
}