import 'package:flutter/material.dart';

class EventPage extends StatefulWidget{
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}
class _EventPageState extends State<EventPage> {

  final events =[
    {
      "speaker": "Lior Chamla",
      "date": "13h à 13h30",
      "subject": "Le code legacy",
      "avatar": "lior"
    },
    {
      "speaker": "Damien Cavailles",
      "date": "17h30 à 18h",
      "subject": "git blame --no-offense",
      "avatar": "damien"
    },
    {
      "speaker": "Defenc Intelligence",
      "date": "18h à 18h30",
      "subject": "A la découverte des IA génératifs",
      "avatar": "defendintelligence"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index){
            final event = events[index];
            final avatar = event['avatar'];
            final speaker = event['speaker'];
            final date = event['date'];
            final subject = event['subject'];
            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$avatar.jpg"),
                title: Text('$speaker ($date)'),
                subtitle: Text('$subject'),
                trailing: Icon(Icons.more_vert),
              ),
            );
          }

      ),
    );
  }
}
