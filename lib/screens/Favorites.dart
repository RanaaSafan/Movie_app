import 'package:flutter/material.dart';
class Movie {
  final String name;
  final String image;
  final String desc;

Movie({required this.name,required this.image,required this.desc,  });

}
class Favorites extends StatefulWidget {
  static List<Movie> favoriteMovies = [];
  static void addFavorite(Movie movie) {

  if (!favoriteMovies.contains(movie)) {
    favoriteMovies.add(movie);
    favoriteMovies.remove(movie.desc);
  }

}
static void removeFavorite(Movie movie) {
    favoriteMovies.remove(movie);
}

@override
_FavoritesState createState() => _FavoritesState();}
class _FavoritesState extends State<Favorites> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(itemCount: Favorites.favoriteMovies.length,itemBuilder: (context, index) {
        final movie = Favorites.favoriteMovies[index];
        return Container(
          width: double.infinity,
          color: Colors.blue[200],
          child: Column(  children: [
            ListTile(title: Text(movie.name,style: TextStyle(color: Colors.white),textDirection: TextDirection.rtl,),
                leading: Image.asset(movie.image,)
            )
            ,SizedBox(height: 20,)
          ],
          ),
        );
        },
      ),
    );
  }}