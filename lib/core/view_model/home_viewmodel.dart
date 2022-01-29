import 'package:number_trivia/core/model/locator_model.dart';
import 'package:number_trivia/core/services/trivia_services.dart';
import 'package:number_trivia/core/view_model/base_model.dart';
import 'package:number_trivia/ui/view_state.dart';

class HomeViewModel extends BaseModel{
  TriviaServices triviaServices = getLocator<TriviaServices>();
   String? message;
  Future<String?> getData(String num)async{
    
    setState(ViewState.Busy);
    var getTriviaData = await triviaServices.getTrivia(num);
    message = getTriviaData;
    notifyListeners();
    setState(ViewState.Idle);
  }
}