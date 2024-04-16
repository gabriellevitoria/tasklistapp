// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});


void _logout(BuildContext context) {
  //TODO :signout usando Firebase;
  Navigator.pushReplacementNamed(context, '/login');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Tasks'),
        actions: [
          IconButton(
            
            onPressed: () => _logout(context),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/newTask'), //rota do botão
        
      ),

      body: ListView(
        children: [
          Dismissible(
            background: Container (color: Colors.red),
            onDismissed: (_) {},
            key: Key ('task2'),
            child: CheckboxListTile(
              title: Text('task2'),
              subtitle: Text('abulé'),
              value: false,
              onChanged: (_) {}
            ) 
          )
        ],
      ),

    );
  }
}