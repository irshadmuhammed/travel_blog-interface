import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_blog/widgets/bottomImage.dart';
import 'package:travel_blog/widgets/topImage.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text(
              "Travel Blog",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelBlog(),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  "View All",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          ),
        ],
      ),
    );
  }
}
