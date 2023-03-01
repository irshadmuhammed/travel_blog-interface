import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageCtrl,
      itemCount: _list.length,
      itemBuilder: ((context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                bottom: 15,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      travel.location,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      travel.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 5,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
