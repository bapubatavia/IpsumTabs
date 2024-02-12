import 'package:app_with_tabs/pages/about_us.dart';
import 'package:app_with_tabs/pages/calculator.dart';
import 'package:app_with_tabs/pages/home.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int selectedTab = 0;
  void navigateTabs(int index){
    setState(() {
      selectedTab = index;
    });
  }

  final List<Widget> pages = [
    const Home(),
    const Calculator(),
    const AboutUs()    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(     
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
              child: const Center(child: Text('IPSUM-TAB', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold))),
            ),
            ListTile(
              selectedTileColor: Colors.grey[300],
              selectedColor: Colors.green[400],
              title: const Text('Home'),
              trailing: const Icon(Icons.home),              
              selected: selectedTab == 0,
              onTap: (){
                navigateTabs(0);
                Navigator.pop(context);
              }
            ),
            ListTile(
              selectedTileColor: Colors.grey[300],
              selectedColor: Colors.green[400],              
              title: const Text('Calculator'),
              trailing: const Icon(Icons.calculate),
              selected: selectedTab == 1,
              onTap: (){
                navigateTabs(1);
                Navigator.pop(context);
              }
            ),
            ListTile(
              selectedTileColor: Colors.grey[300],
              selectedColor: Colors.green[400],              
              title: const Text('About Us'),
              trailing: const Icon(Icons.info),
              selected: selectedTab == 2,
              onTap: (){
                navigateTabs(2);
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white, weight: 30.0),
        title: const Text('IPSUM-TAB', 
        style:TextStyle(color: Colors.white)), 
        backgroundColor: Colors.black,
      ),
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.black,
        currentIndex: selectedTab,
        onTap: navigateTabs,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Calculator'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About Us'),
        ]),
    );
  }
}
