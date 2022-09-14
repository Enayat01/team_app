import 'package:flutter/material.dart';

Widget listViewItem(int tileNumber, String image, String name, String score) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('$tileNumber',style: const TextStyle(color: Colors.grey),),
              const SizedBox(width: 15),
              CircleAvatar(
                foregroundImage: AssetImage(image),
              ),
              const SizedBox(width: 15),
              Text(name,style: const TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Text(score,style: const TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    ),
  );
}
