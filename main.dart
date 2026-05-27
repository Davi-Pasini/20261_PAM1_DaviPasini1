import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 183, 58, 58)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
          backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        
        padding: const EdgeInsets.all(20.0),

        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 67,
              child: CircleAvatar(
                radius: 59,

                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/2021966489281306625/m0eMfmMZ_400x400.jpg'),
              ),
            
            ),
          
            










              const CircleAvatar(
              radius: 67,
              child: CircleAvatar(
                radius: 59,

                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvEskX6oEUwBl2u6A1vQhlo8MO9jarRvg9eg&s'),
              ),
            
            ),
          ],

        ),

      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const[
            ListTile(
              title: Text('End Drawer'),
            )
          ],
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            ListTile(
              title: Text('Drawer'),
            )
          ], //children
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // ações do botão
        },
        backgroundColor: const Color.fromARGB(255, 252, 96, 85),
        child: Text('Botão Flutuante',
          style: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(255, 255, 242, 241)            
              ),
          ), 
      ),
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Botão 1'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Botão 2'),
        ],
      ),
    );
  }
}
