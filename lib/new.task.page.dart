// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({super.key});

  void _onSaved (BuildContext context) {
    //TO DOS : Salvar a task no Firebase

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('New Task'),
        
      ),

      body:  Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 5),
        
        child: Container (
          height: 110,
          padding: EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

               TextField(
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Digite sua tarefa',
                  ),  
                ),

          
              Container(
                margin: EdgeInsets.only(top:10 ),
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                child: Text('Cadastrar'),
                onPressed: () => _onSaved(context),
                ), 
              ),

            ],

          ),


        )
      
      )

    );
  }
}