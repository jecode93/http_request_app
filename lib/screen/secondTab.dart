import 'package:flutter/material.dart';
import 'package:http_request_app/models/httpServices.dart';
import 'package:http_request_app/models/user_class.dart';
import 'package:http_request_app/screen/userDetails.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HttpServices result = HttpServices();
    return Scaffold(
      body: FutureBuilder(
        future: result.getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(snapshot.data[index].id.toString()),
                    title: Text(snapshot.data[index].name),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserDetails(
                                    title: snapshot.data[index],
                                  )));
                    },
                  );
                });
          }
        },
      ),
    );
  }
}
