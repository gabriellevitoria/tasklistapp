// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(
        title: Text('Registro'),
      ),

      body: Center(
       
        
        child: Container(

        height: 300,
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(horizontal: 20),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Nome",
                  //labelText: "E-mail"
                ),
                keyboardType: TextInputType.emailAddress,
                
                ),


                TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Descrição",
                  //labelText: "E-mail"
                ),
                keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  //labelText: "E-mail"
                  ),
            
              ) ,

             
            
              Container(
                child:SizedBox(
                
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                child: Text('Sing in'),
                onPressed: () {},
                  

                )
                ), 

                
              ),

              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Novo Usuário"),
              ),
              
              
            ],
          ),
        )
      ), 
    );
  }
}