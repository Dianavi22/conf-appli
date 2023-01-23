import 'package:confappli/Pages/Add_event_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Pages/EventPage.dart';
import 'Pages/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: [
                Text("Accueil"),
                Text("Liste des conférences"),
                Text("Ajout d'un évènement")][_currentIndex],
            ),
            body: [
              HomePage(),
              EventPage(),
              AddEventPage()
            ][_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) => setCurrentIndex(index),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              iconSize: 32,
              elevation: 10,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Accueil'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month),
                    label: 'Planning'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add),
                    label: 'Ajout'
                )
              ],
            )
        )
    );
  }
}




