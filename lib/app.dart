// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_list/login.page.dart';
import 'register.page.dart';
import 'tasks.page.dart';
import 'new.task.page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        useMaterial3: false,
        primarySwatch: Colors.pink,

      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/tasks": (context) => TasksPage(),
        "/newTask": (context) => NewTaskPage(),
      },
      
      initialRoute: "/login",
      
    );
  }
}