import 'package:flutter/material.dart';

import 'modifiers/user_helper.dart';

class UserCard extends StatelessWidget {
  final User? user;
  const UserCard({this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          height: 220,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text("University of Riverpod", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, color: Colors.blue),),
             Text("Temporary pass", style: TextStyle(decoration: TextDecoration.underline)),

             SizedBox(height: 20),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Text("Name: ", style: TextStyle(fontWeight: FontWeight.bold)),
                         Text(user!.name)
                       ],
                     ),

                     SizedBox(height: 20,),

                     Row(
                       children: [
                         Text("Age: ", style: TextStyle(fontWeight: FontWeight.bold)),
                         Text("${user!.age}")
                       ],
                     ),

                     SizedBox(height: 20,),


                     Row(
                       children: [
                         Text("Gender: ", style: TextStyle(fontWeight: FontWeight.bold)),
                         Text(user!.gender)
                       ],
                     ),
                   ],
                 ),

                 Container(
                   height: 120,
                   width: 100,
                   child: Image.network(user!.urlAvatar, fit: BoxFit.cover),
                 )
               ],



             ),





          ]),
        ),
      ),
    );
  }
}
