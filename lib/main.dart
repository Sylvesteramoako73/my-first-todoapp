import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyaPP(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyaPP extends StatelessWidget {
  const MyaPP({ Key? key, required String title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1638214522452-a49ea98b4682?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),),
          ), Text("My Task"), 
        ],), actions: const [Icon(Icons.more_horiz_outlined), Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children:  [
            const Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
    
          ],
        ),
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.check_circle_outline),
      title: Text("Plan Trip to Finland",style: TextStyle(color: Colors.cyan),),
      subtitle: Text("The family trip to Finland next Summer"),
      trailing: Column( children: [
        Icon(Icons.alarm,color: Colors.green,), Text("Yesterday")
      ],),
      
      );
  }
}