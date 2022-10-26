import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Conférence 2022"),
        ),
        body: Center(
          child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/flutter.png"),
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

              ],
          )


        )
      ),
    );
  }
}

