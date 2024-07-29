import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/data.dart';
import 'package:movie_app/screens/Favorites.dart';
import 'package:movie_app/screens/profile.dart';
import 'package:movie_app/widgets/movieItems.dart';
class Imageslider extends StatefulWidget {
  const Imageslider({super.key});

  @override
  State<Imageslider> createState() => _Imageslider();
}

class _Imageslider extends State<Imageslider> {
  final items=[
    Image.asset("assets/mov1.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov2.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov3.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov4.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov5.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov6.webp",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov7.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov8.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/mov9.jpg",fit: BoxFit.cover,width: double.infinity,),
  ];
  int currentindex=0;
  int newvalue=0;

  final List<Widget> screens = [
    Imageslider(),
    Favorites(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search,color: Colors.grey,),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white,backgroundColor: Colors.black),
          ),
           cursorColor: Colors.grey,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: newvalue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined),label: "favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: "profile"),
        ],
        backgroundColor: Colors.grey,
        onTap: (int x){
         setState(() {
          newvalue = x;
          if(newvalue==0){
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Imageslider()));
          }
         else if (newvalue == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Favorites()));
          }
          else if (newvalue == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Profile()));
          }
        });
      },
        selectedItemColor: Colors.white,
      ),
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.only(top: 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider( options: CarouselOptions(
                  autoPlay: true,
                  height: 250,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  scrollPhysics: const BouncingScrollPhysics(),
                  onPageChanged: (index,reason){
                    setState(() {
                      currentindex=index;
                    });
                  }
              ),items: items,),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Foreign movies",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: List.generate(Mov.length, (index) =>
                    MovieItems(image: Mov[index].image, name:Mov[index].name, id:Mov[index].id, desc:Mov[index].desc,movieNumber:Mov[index].movieNumber,movietype:Mov[index].movietype,productionyear:Mov[index].productionyear,quality:Mov[index].quality,duration:Mov[index].duration  )
                    )
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Arabic movies",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        AraMov.length,
                            (index) =>MovieItems(image: AraMov[index].image, name:AraMov[index].name, id:AraMov[index].id, desc:AraMov[index].desc,movieNumber:AraMov[index].movieNumber,movietype:AraMov[index].movietype,productionyear:AraMov[index].productionyear,quality:AraMov[index].quality,duration:AraMov[index].duration  )


                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Turkish series",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        Engmos.length,
                            (index) =>MovieItems(image: Engmos[index].image, name:Engmos[index].name, id:Engmos[index].id, desc:Engmos[index].desc,movieNumber:Engmos[index].movieNumber,movietype:Engmos[index].movietype,productionyear:Engmos[index].productionyear,quality:Engmos[index].quality,duration:Engmos[index].duration  )
                    )
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("ِArabic series",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        Aramos.length,
                            (index) =>MovieItems(image: Aramos[index].image, name:Aramos[index].name, id:Aramos[index].id, desc:Aramos[index].desc,movieNumber:Aramos[index].movieNumber,movietype:Aramos[index].movietype,productionyear:Aramos[index].productionyear,quality:Aramos[index].quality,duration:Aramos[index].duration  )
                    )
                ),
              ),
              SizedBox(height: 20),

            ],






          ),
        ),
      ),


    );
  }
}
