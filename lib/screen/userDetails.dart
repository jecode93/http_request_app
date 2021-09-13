import 'package:flutter/material.dart';
import 'package:http_request_app/models/user_class.dart';

class UserDetails extends StatelessWidget {
  final User? title;
  const UserDetails({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!.name.toString(),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Card(
          child: Column(children: [
            ListTile(
              title: Text('ID : '),
              subtitle: Text(
                title!.id.toString(),
              ),
            ),
            ListTile(
              title: Text('Name : '),
              subtitle: Text(
                title!.name.toString(),
              ),
            ),
            ListTile(
              title: Text('Username : '),
              subtitle: Text(
                title!.username.toString(),
              ),
            ),
            ListTile(
              title: Text('Email : '),
              subtitle: Text(
                title!.email.toString(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
