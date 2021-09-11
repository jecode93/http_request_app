import 'package:http_request_app/models/post_request.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpServices {
  Future<List<Post>> getData() async {
    final postUrl = "https://jsonplaceholder.typicode.com/posts";
    try {
      final response = await http.get(Uri.parse(postUrl));
      final jsonData = jsonDecode(response.body);

      List<Post> somePost = [];

      for (var p in jsonData) {
        Post post = Post(
          title: p['title'],
          userId: p['userId'],
          id: p['id'],
          body: p['body'],
        );

        somePost.add(post);
      }

      return somePost;
    } catch (error) {
      throw (error);
    }
  }
}
