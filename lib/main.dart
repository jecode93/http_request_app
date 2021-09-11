import 'package:flutter/material.dart';
import 'package:http_request_app/screen/postDetails.dart';
import 'models/httpServices.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Http Request'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HttpServices request = HttpServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: request.getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      ListTile(
                          leading: Text(
                            snapshot.data[i].id.toString(),
                          ),
                          title: Text(snapshot.data[i].title),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PostDetail(
                                          post: snapshot.data[i],
                                        )));
                          }),
                      Divider(),
                    ],
                  );
                });
          }
        },
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
