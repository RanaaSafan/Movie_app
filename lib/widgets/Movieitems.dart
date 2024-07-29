import 'package:flutter/material.dart';
import 'package:movie_app/screens/DESCitems.dart';

class MovieItems extends StatelessWidget {
  final String image;
  final String id;
  final String name;
  final String desc;
  final String movieNumber;
  final String movietype;
  final String productionyear;
  final String quality;
  final String duration;

  const MovieItems({
    required this.image,
    required this.name,
    required this.id,
    required this.desc,
    required this.movieNumber,
    required this.movietype,
    required this.productionyear,
    required this.quality,
    required this.duration,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DESCitems(name: name, image: image, desc: desc, movieNumber: movieNumber, movietype: movietype, productionyear: productionyear, quality: quality, duration: duration)), // Pass the required arguments here if needed
        );
      },
      child: Column(
        children: [
          Container(
             margin: EdgeInsets.all(10),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white12,
                width: 2.0,
              ),
              color: Colors.white70,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}