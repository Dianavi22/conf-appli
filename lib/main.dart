import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: Text("Prochainement disponible"),
      )
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conférence 2022"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/logo.svg", color: Colors.blue),
              const Text("Conférence 2022",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
                ),
              ),
              const Text("salon virtuel 2022",
                  style:TextStyle(
                  fontSize:24
              ),
          textAlign: TextAlign.center,
              ),
              ElevatedButton(
                style: ButtonStyle(
                // backgroundColor: MaterialStatePropertyAll()
              ),
                onPressed: () => print("poyo"), child: Text("Afficher le planning",
              style:TextStyle(
                fontSize: 20
              ),
              ),
              )
            ],
        )
      )
    );
  }
}

