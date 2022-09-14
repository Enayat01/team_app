import 'package:flutter/material.dart';
import 'package:team_app/config/constants.dart';
import 'package:team_app/screens/bottom_nav_bar.dart';

class RosterScreen extends StatelessWidget {
  const RosterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  gridViewItemCoach(
                      'assets/images/coach1.jpg', 'Sam Willow', 'Coach'),
                  gridViewItemCoach(
                      'assets/images/coach2.jpg', 'Angel Dorwart', 'Coach'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gridViewItem('assets/images/user1.jpg', 'Joe M.', 77, 'SG'),
                  gridViewItem('assets/images/user2.jpg', 'Zain', 13, 'SF'),
                  gridViewItem('assets/images/user3.jpg', 'Charlie', 22, 'PG'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gridViewItem('assets/images/user2.jpg', 'Abram', 39, 'PF'),
                  gridViewItem('assets/images/user3.jpg', 'Jacxson', 62, 'C'),
                  gridViewItem('assets/images/user1.jpg', 'Roger', 76, 'PF'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gridViewItem('assets/images/user3.jpg', 'Angel', 48, 'SF'),
                  gridViewItem('assets/images/user2.jpg', 'Joe M.', 77, 'SG'),
                  gridViewItem('assets/images/user1.jpg', 'Joe M.', 77, 'SG'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gridViewItem('assets/images/user2.jpg', 'Corey', 35, 'PG'),
                  gridViewItem('assets/images/user1.jpg', 'Jakob', 15, 'C'),
                  gridViewItem('assets/images/user3.jpg', 'Joe M.', 77, 'SG'),
                ],
              ),
            ),
            // GridView(
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,
            //       mainAxisSpacing: 10,
            //       crossAxisSpacing: 10,
            //     ),
            //     children: [
            //       gridViewItem('assets/images/user1.jpg', 'Joe M.', 77, 'SG'),
            //       gridViewItem('assets/images/user2.jpg', 'Zain', 13, 'SF'),
            //       gridViewItem('assets/images/user3.jpg', 'Charlie', 22, 'PG'),
            //       gridViewItem('assets/images/user2.jpg', 'Abram', 39, 'PF'),
            //       gridViewItem('assets/images/user3.jpg', 'Jacxson', 62, 'C'),
            //       gridViewItem('assets/images/user1.jpg', 'Roger', 76, 'PF'),
            //       gridViewItem('assets/images/user1.jpg', 'Angel', 48, 'SF'),
            //       gridViewItem('assets/images/user3.jpg', 'Joe M.', 77, 'SG'),
            //       gridViewItem('assets/images/user2.jpg', 'Joe M.', 77, 'SG'),
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }
}

Widget gridViewItemCoach(String image, String name, String title) {
  return SizedBox(
    child: Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(color: primaryColor),
        ),
      ],
    ),
  );
}

Widget gridViewItem(String image, String name, int position, String title) {
  return SizedBox(
    child: Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$position',
              style: TextStyle(color: primaryColor, fontSize: 10),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ],
    ),
  );
}
