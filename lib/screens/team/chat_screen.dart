import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  Widget buildListTile(
    String image,
    String title,
    String subtitle,
    String time,
  ) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
        trailing: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                time,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            buildListTile('assets/images/teamlogo.jpg', 'Main Team Chat',
                'Some sample text', '08:24AM'),
            buildListTile('assets/images/teamlogo.jpg', 'Secondary Team Chat',
                'Some sample text', 'yesterday'),
            buildListTile('assets/images/userlogo.png', 'Jaylon Lipshutz',
                'Some sample text', '2 days ago'),
            buildListTile('assets/images/userlogo.png', 'Jayden Korsgaard',
                'Some sample text', 'last week'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
