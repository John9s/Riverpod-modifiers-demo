import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers/modifiers/user_helper.dart';
import 'package:riverpod_modifiers/user_card.dart';

Future<User> fetchUser (String username) async{
  await Future.delayed(Duration(milliseconds: 400));

  return users.firstWhere((user) => user.name == username);

}

final userProvider = FutureProvider.family<User, String> ((ref, username)async => fetchUser(username));

class FamilyPrimitivePage extends StatefulWidget {
  const FamilyPrimitivePage({Key? key}) : super(key: key);

  @override
  _FamilyPrimitivePageState createState() => _FamilyPrimitivePageState();
}

class _FamilyPrimitivePageState extends State<FamilyPrimitivePage> {

  String username = users.first.name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FamilyPrimitive Modifier"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Consumer(builder: (context, ref, child){

                final future = ref.watch(userProvider(username));

                return future.when(
                      data: (user) => UserCard(user: user),
                        error: (e, stack) => Center(child: Text("No user found")),
                        loading: () => CircularProgressIndicator());

                 },
            )
            ),

            const SizedBox(height: 32),
            buildSearch(),
          ],
        ),
      ),
    );
  }

  Widget buildSearch() => Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 32),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Search',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        buildUsernameDropdown(),
      ],
    ),
  );

  Widget buildUsernameDropdown() => Row(
    children: [
      Text(
        'First name',
        style: TextStyle(fontSize: 24),
      ),
      Spacer(),
      DropdownButton<String>(
        value: username,
        iconSize: 32,
        style: TextStyle(fontSize: 24, color: Colors.black),
        onChanged: (value) => setState(() => username = value!),
        items: users
            .map((user) => user.name)
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
            .toList(),
      ),
    ],
  );


}
