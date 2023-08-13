import 'package:first_app/learn_page.dart';
import 'package:flutter/material.dart';
import 'act_page.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColorDark: Colors.green[800],
          fontFamily: "Lora",
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(fontSize: 14),
          )),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  //means that the screen can be reloaded with something new on the screen
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    ActPage(),
    LearnPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "Planet365",
          style: TextStyle(fontSize: 50),
        ),
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.handshake_rounded), label: "ACT"),
          NavigationDestination(icon: Icon(Icons.class_), label: "LEARN"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            //basically refreshes the screen
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
