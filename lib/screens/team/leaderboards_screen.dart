import 'package:flutter/material.dart';
import 'package:team_app/widgets/leading_row.dart';
import 'package:team_app/widgets/list_view_item.dart';

class LeaderboardsScreen extends StatelessWidget {
  const LeaderboardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            leadingRow(
              context,
              'Points',
              'Rebounds',
              '3\'s',
              'FT\'s',
              'FG%',
              'Assist',
            ),
            const SizedBox(height: 10),
            listViewItem(1, 'assets/images/userlogo.png', 'Joe', '1450'),
            listViewItem(2, 'assets/images/userlogo.png', 'Charlie', '1450'),
            listViewItem(3, 'assets/images/userlogo.png', 'Charlie', '1450'),
            listViewItem(4, 'assets/images/userlogo.png', 'George', '1450'),
            listViewItem(5, 'assets/images/userlogo.png', 'Joe', '1450'),
            listViewItem(6, 'assets/images/userlogo.png', 'Charlie', '1450'),
            listViewItem(7, 'assets/images/userlogo.png', 'Corey', '1450'),
            listViewItem(8, 'assets/images/userlogo.png', 'Alfonso', '1450'),
            listViewItem(9, 'assets/images/userlogo.png', 'Abram', '1450'),
            listViewItem(10, 'assets/images/userlogo.png', 'Abram', '1450')
          ],
        ),
      ),
    ));
  }
}
