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
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 58, 81, 183)),
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
        title: const Text('ETEC Mongaguá - PAM-1'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
      ),

      endDrawer: const Drawer(
        child: Center(child: Text('Meu EndDrawer (Configurações)')),
      ),

      drawer: const Drawer(
        child: Center(child: Text('Meu Drawer (menu)')),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blueAccent,
              child: CircleAvatar(
                radius: 56,
                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/2021966489281306625/m0eMfmMZ.jpg'),
              ),
            ),

            const SizedBox(height: 15,),
            const Text(
              'Davi Pasini Secundo',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,),
            ),
              const Text(
              '16 Anos - Mongaguá, SP',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const Text(
              'Vulgo: Bluy_P',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),

            //parei por aqui

          ],
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
