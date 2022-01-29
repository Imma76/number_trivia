
import 'package:flutter/material.dart';
import 'package:number_trivia/core/view_model/home_viewmodel.dart';
import 'package:provider/provider.dart';

import 'view_state.dart';

class HomeView extends StatelessWidget {
 HomeView({Key? key}) : super(key: key);
TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context)=>HomeViewModel(),
        child: Consumer<HomeViewModel>(
      builder: (context, value, child) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  value.viewState == ViewState.Busy?const CircularProgressIndicator():Visibility(
                    visible: value.message != null,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                       
                        '${value.message}', key:Key('trivia-key'),),
                    )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                       hintText: 'enter a number e.g 2',
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      value.getData(controller.text.trim());
                    }, child: Text('Get Trivia'), style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),),
                  )
                ],
              ),
            );
          }
      
      
 )   );
  }
}