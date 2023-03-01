import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.generateMostPopular();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          var travel = _list[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 15,
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        travel.location,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        travel.name,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }),
        separatorBuilder: (_, index) => SizedBox(
              width: 15,
            ),
        itemCount: _list.length);
  }
}
