import 'package:number_trivia/core/model/locator_model.dart';
import 'package:number_trivia/core/model/model.dart';

class TriviaServices{
                TriviaModel triviamodel = getLocator<TriviaModel>();
 
       Future<String> getTrivia(String num)async{
         String getData = await triviamodel.getTrivia(num);
         if(getData != null){
              return getData;
         }
         return getData;
           }


}