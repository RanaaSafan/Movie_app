import 'package:flutter/material.dart';
import 'Favorites.dart'; // Import the favorites screen

class DESCitems extends StatefulWidget {
  final String name;
  final String image;
  final String desc;
  final String movieNumber;
  final String movietype;
  final String productionyear;
  final String quality;
  final String duration;

  const DESCitems({
    required this.name,
    required this.image,
    required this.desc,
    required this.movieNumber,
    required this.movietype,
    required this.productionyear,
    required this.quality,
    required this.duration,
  });

  @override
  _DESCitemsState createState() => _DESCitemsState();
}

class _DESCitemsState extends State<DESCitems> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Image.asset(widget.image),
            buildFavoriteButton(),
            buildSection("Description", widget.desc),
            buildSection("Production Year", widget.productionyear),
            buildSection("Movie Type", widget.movietype),
            buildSection("Duration", widget.duration),
            buildButton("Download", () {
              // Add your download logic here
              print('Download button pressed');
            }),
          ],
        ),
      ),
    );
  }

  Widget buildFavoriteButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.white,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
              if (isFavorite) {
                Favorites.addFavorite(
                  // Replace 'Movie' with your actual class name
                  Movie(name: widget.name, image: widget.image, desc: ".."),
                );
              } else {
                Favorites.removeFavorite(
                  // Replace 'Movie' with your actual class name
                  Movie(name: widget.name, image: widget.image, desc: ".."),
                );
              }
            });
          },
        ),
      ),
    );
  }

  Widget buildSection(String title, String content) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 35),
        Text(
          content,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
        SizedBox(height: 35),
      ],
    );
  }

  Widget buildButton(String title, Function() onPressed) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
