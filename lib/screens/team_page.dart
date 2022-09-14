import 'package:flutter/material.dart';
import 'package:team_app/screens/bottom_nav_bar.dart';
import 'package:team_app/screens/team/chat_screen.dart';
import 'package:team_app/screens/team/leaderboards_screen.dart';
import 'package:team_app/screens/team/roster_screen.dart';
import 'package:team_app/screens/team/standings_screen.dart';

import '../config/constants.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  Widget tabBarItem(
    IconData icon,
    Color iconColor,
    String text,
    Color textColor,
  ) {
    return Tab(
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }

  TabBar get _tabBar => TabBar(
        isScrollable: true,
        controller: _tabController,
        indicatorColor: primaryColor,
        tabs: [
          tabBarItem(
            Icons.signal_cellular_alt_outlined,
            _tabController.index == 0 ? primaryColor : Colors.grey,
            'Standings',
            _tabController.index == 0 ? Colors.black : Colors.grey,
          ),
          tabBarItem(
            Icons.chat_bubble_outline,
            _tabController.index == 1 ? primaryColor : Colors.grey,
            'Chat',
            _tabController.index == 1 ? Colors.black : Colors.grey,
          ),
          tabBarItem(
            Icons.person_pin,
            _tabController.index == 2 ? primaryColor : Colors.grey,
            'Roster',
            _tabController.index == 2 ? Colors.black : Colors.grey,
          ),
          tabBarItem(
            Icons.leaderboard,
            _tabController.index == 3 ? primaryColor : Colors.grey,
            'Leaderboards',
            _tabController.index == 3 ? Colors.black : Colors.grey,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Team'),
        backgroundColor: Theme.of(context).primaryColor,
        bottom: PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: Material(
            color: Theme.of(context).accentColor,
            child: _tabBar,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          StandingsScreen(),
          ChatScreen(),
          RosterScreen(),
          LeaderboardsScreen(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
