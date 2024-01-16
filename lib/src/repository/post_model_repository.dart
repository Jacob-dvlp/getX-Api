import 'dart:convert';

import 'package:flutter_application_2/src/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostModelRepository {
  List<PostModel> postModel = [];
  PostModel? details;

  Future<List<PostModel>> getPost() async {
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if (response.statusCode == 200) {
        final result = postModelFromMap(response.body);

        postModel = result;
        print(postModel);
      }
      return postModel;
    } catch (e) {
      throw e;
    }
  }

  Future<PostModel> getDetails({required int id}) async {
    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/$id"),
      );
      if (response.statusCode == 200) {
        details =  postDetails(response.body);
        print(response.statusCode);
      }
      return details!;
    } catch (e) {
      throw e;
    }
  }
}
