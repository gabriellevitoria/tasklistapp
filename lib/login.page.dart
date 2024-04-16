// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Login'),
      ),

      body: Center(
        
        child: Container(

        height: 220,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "E-mail",
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
                obscureText: true,

              ),

              Container(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                child: Text('Sign-in'),
                onPressed: () => Navigator.pushReplacementNamed(context, '/tasks'),
                ), 
              ),
              
              TextButton(
                onPressed: () {

                  Navigator.of(context).pushNamed('/register');

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