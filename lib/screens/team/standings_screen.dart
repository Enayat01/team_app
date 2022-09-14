import 'package:flutter/material.dart';
import 'package:team_app/widgets/list_view_item.dart';

import '../../widgets/leading_row.dart';

class StandingsScreen extends StatelessWidget {
  const StandingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Column(
              children: [
                leadingRow(
                  context,
                  'Record',
                  'Win%',
                  'GB',
                  'Home',
                  'Away',
                  'PF ',
                ),
                const SizedBox(height: 10),
                listViewItem(1, 'assets/images/teamlogo.jpg',
                    'Washington Wizards', '12-1'),
                listViewItem(2, 'assets/images/teamlogo.jpg',
                    'Bahcesehir Koleji', '10-3'),
                listViewItem(
                    3, 'assets/images/teamlogo.jpg', 'This Team', '8-1'),
                listViewItem(
                    4, 'assets/images/teamlogo.jpg', 'Ratiopharm Ulm', '8-1'),
                listViewItem(
                    5, 'assets/images/teamlogo.jpg', 'Utah Jazz', '7-1'),
                listViewItem(
                    6, 'assets/images/teamlogo.jpg', 'Lietkabelis', '6-3'),
                listViewItem(
                    7, 'assets/images/teamlogo.jpg', 'Milwaukee Bucks', '2-11'),
                listViewItem(
                    8, 'assets/images/teamlogo.jpg', 'Indiana Pacers', '1-11'),
                listViewItem(
                    9, 'assets/images/teamlogo.jpg', 'Miami Heat', '1-10'),
                listViewItem(10, 'assets/images/teamlogo.jpg',
                    'Nevada Wolf Pack', '1-1'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
