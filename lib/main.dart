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
                const SizedBox(height: 20),

            const Divider(), 

            _buildContactItem(Icons.email, 'dpasinigemeos@gmail.com'),
            _buildContactItem(Icons.phone, '(13) 98119-2530'),
            _buildContactItem(Icons.web, '@Davi-Pasini'),
            const Divider(),
            const SizedBox(height: 20),

           
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Resumo Profissional',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 31, 25, 121)),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Aluno da Etec Adolpho Berezin, etudante do Curso 2MD2, atualmente aprendendo diverasas linguagens como gotod, C#, C++, python. Fora o conhecimento em programação também possuo conhecimento de design.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),

           
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Objetivo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 31, 25, 121)),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Conseguir futuramente trabalhar com design ou ilustrações digitais, e trabalhar para empresas grandes dessa área, como Blizzard, Riot e afins.',
              textAlign: TextAlign.justify,
              // Itálico para dar ênfase ao objetivo profissional
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),

            const Divider(),
            const Divider(),
            
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purpleAccent,
              child: CircleAvatar(
                radius: 56,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIH1LXTtJEbOnYNvuER9x8cjMf_rG-EtDhTVcWLkihPzeBPFTo-tLANPQ&s=10'),
              ),
            ),

            const SizedBox(height: 15,),
            const Text(
              'Arthur Tsuyoshi Uno Rozendo do Carmo Correia',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,),
            ),
              const Text(
              '17 Anos - Mongaguá, SP',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const Text(
              'Vulgo: Fungas',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
                const SizedBox(height: 20),

            const Divider(), 

            _buildContactItem(Icons.email, 'fungas2009@gmail.com'),
            _buildContactItem(Icons.phone, '(11) 98158-0381'),
            _buildContactItem(Icons.web, '@FungasFelson'),
            const Divider(),
            const SizedBox(height: 20),

           
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Resumo Profissional',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 101, 18, 104)),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Aluno da Etec Adolpho Berezin, participo do ensino medio e tecnico 2MD2.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),

           
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Objetivo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 101, 18, 104)),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Conseguir futuramente trabalhar no Itaú e ser feliz',
              textAlign: TextAlign.justify,
              // Itálico para dar ênfase ao objetivo profissional
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
      


      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
        ],
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação executada ao clicar
          print('Botão Flutuante Pressionado!');
        },
        backgroundColor: const Color.fromARGB(255, 82, 94, 255),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildContactItem(IconData icone, String texto) {
    return Padding(

      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(

        children: [

          Icon(icone, color: Colors.purpleAccent, size: 20),
          

          const SizedBox(width: 15),
          

          Text(texto, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  
}
// poyo