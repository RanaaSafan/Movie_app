import 'package:flutter/material.dart';
class Profile extends StatelessWidget {

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
@override
Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.black,
      title: Text("My Profile",
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: CircleAvatar(  radius: 150,backgroundImage: AssetImage("assets/pro.jpeg"), ),),),
          SizedBox(height: 20),
        Text("User Name:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Expanded(
             child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: TextFormField(controller: firstNameController,
                 decoration: InputDecoration(
                   labelText: "First Name",
                   border: OutlineInputBorder(),
                 ),
               ),
              ),
           ),
           SizedBox(width: 10),
            Expanded(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: TextFormField(
                 controller: lastNameController,
                 decoration: InputDecoration(
                   labelText: "Last Name",
                   border: OutlineInputBorder(),
                 ),
                ),
             ),
           ),
          ],
    ),
        SizedBox(height: 20),
        Text("Age:", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        SizedBox(height: 10),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: TextFormField(
                 controller: ageController,
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                 labelText: "Age",
                   border: OutlineInputBorder(),              ),
               ),
         ),
  ],      ),
);  }
}