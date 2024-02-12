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
  void navigateBar(int index){
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text('My App'),
            ),
            ListTile(
              title: const Text('Home'),
              trailing: const Icon(Icons.home),
              selected: selectedTab == 0,
              onTap: (){
                navigateBar(0);
                Navigator.pop(context);
              }
            ),
            ListTile(
              title: const Text('Calculator'),
              trailing: const Icon(Icons.calculate),
              selected: selectedTab == 1,
              onTap: (){
                navigateBar(1);
                Navigator.pop(context);
              }
            ),
            ListTile(
              title: const Text('About Us'),
              trailing: const Icon(Icons.info),
              selected: selectedTab == 2,
              onTap: (){
                navigateBar(2);
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('MyApp', style:TextStyle(color: Colors.white)), backgroundColor: Colors.black,),
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.black,
        currentIndex: selectedTab,
        onTap: navigateBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Calculator'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About Us'),
        ]),
    );
  }
}
