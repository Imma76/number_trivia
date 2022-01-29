  

import 'package:get_it/get_it.dart';
import 'package:number_trivia/core/model/model.dart';
import 'package:number_trivia/core/services/trivia_services.dart';

GetIt getLocator = GetIt.instance;
void setUpLocator(){
  getLocator.registerLazySingleton(() => TriviaServices());
  
  getLocator.registerLazySingleton(() => TriviaModel());
}