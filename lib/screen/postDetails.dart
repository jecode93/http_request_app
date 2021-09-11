import 'package:flutter/material.dart';
import 'package:http_request_app/models/post_request.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  const PostDetail({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(
                  'User ID :',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  post.userId.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              ListTile(
                title: Text(
                  'ID :',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  post.id.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              ListTile(
                title: Text(
                  'Body :',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  post.body.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
