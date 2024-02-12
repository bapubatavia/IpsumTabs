import 'package:flutter/material.dart';

// class AboutUs extends StatelessWidget {
//   const AboutUs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Text('about us'),
//     );
//   }
// }

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title: const Text('Creator ID card', style: TextStyle(fontSize: 18.0),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        titleTextStyle: const TextStyle(color: Colors.white),
        elevation: 0.0,
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter += 1;
          });
        },
        backgroundColor: Colors.grey[100],
        child: const Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/robot.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[900],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              )
            ),
            const SizedBox(height: 10.0),
            Text(
              'Luc Bapu BATAVIA',
              style: TextStyle(
                color: Colors.green[400],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 30.0),
            Text(
              'CURRENT TIMES YOU HAVE CLICKED ON BUTTON',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              )
            ),
            const SizedBox(height: 10.0),
            Text(
              '$clickCounter',
              style: TextStyle(
                color: Colors.green[400],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 30.0), 
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[800],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'bapu.batavia@rwanda.rw',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                )
              ],
            ),           
          ],
        )
        ),
    );
  }
}
