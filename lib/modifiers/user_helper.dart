import 'package:flutter/material.dart';

class User {
  final String urlAvatar;
  final String name;
  final int age;
  final String gender;

  const User({
    required this.urlAvatar,
    required this.name,
    required this.age,
    required this.gender,
  });
}

final users = [
  User(
    urlAvatar:
        'https://firebasestorage.googleapis.com/v0/b/chat-app-85f20.appspot.com/o/images%2Fbibs.jpg?alt=media&token=5cade184-ec8e-4934-b751-54b36f41f969',
    name: 'Habiba',
    age: 19,
    gender: 'female',
  ),
  User(
    urlAvatar:
        'https://firebasestorage.googleapis.com/v0/b/chat-app-85f20.appspot.com/o/images%2Fcartoon.jpg?alt=media&token=c666cb5c-2e02-4929-aa83-c387569a200d',
    name: 'Emma',
    age: 26,
    gender: 'male',
  ),
  User(
    urlAvatar:
        'https://firebasestorage.googleapis.com/v0/b/chat-app-85f20.appspot.com/o/images%2Fangela.jpg?alt=media&token=984c2917-ea3d-45f5-b897-57ec3a68e946',
    name: 'Angela',
    age: 32,
    gender: 'female',
  ),
  User(
    urlAvatar:
        'https://firebasestorage.googleapis.com/v0/b/chat-app-85f20.appspot.com/o/images%2Fmike.jpg?alt=media&token=2e1bd30d-e519-4cbc-b456-68a47d73ae2b',
    name: 'Mike',
    age: 28,
    gender: 'male',
  ),
  User(
    urlAvatar:
        'https://firebasestorage.googleapis.com/v0/b/chat-app-85f20.appspot.com/o/images%2Fdavid.jpg?alt=media&token=4ecd2b41-c866-4a6a-a0f1-9769a7264aeb',
    name: 'David',
    age: 22,
    gender: 'male',
  ),
  User(
    urlAvatar:
        'https://firebasestorage.googleapis.com/v0/b/chat-app-85f20.appspot.com/o/images%2Fjohn.jpg?alt=media&token=17a30b54-7256-4e5d-b945-0278077d8734',
    name: 'John',
    age: 20,
    gender: 'male',
  ),
];
