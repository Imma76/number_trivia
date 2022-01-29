import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart'as http;


class TriviaModel{

int? parsedValue;
      Future getTrivia(String num)async{
        
        try{
          var value = int.tryParse(num);
          if(value != null){
            parsedValue = value;
          }
             var loadUrl = await http.get(Uri.parse('http://numbersapi.com/$parsedValue'));
       print(loadUrl.body);
        return toJson(loadUrl.body);
        }on SocketException{
          return toJson('no internet');
        }on FormatException{
          return toJson('please enter a number');
        }
       
      }
       toJson(var message){
        // print(message);
        var response;
        if (message == 'no internet'){
          response =  'no internet';
          return  response;
        }else if(message == 'invalid exception'){
           response = 'please enter a number';
        return  response;
        }else{
          response = message;
          return response;
        }
    
  }
}