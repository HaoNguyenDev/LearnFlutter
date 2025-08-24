import 'package:dio/dio.dart';
import 'package:learnflutter/main.dart';

final dio = Dio();

class PostList {
  List<Post?>? posts;

  PostList({required this.posts});

  factory PostList.fromJson(List<dynamic> json) {
    return PostList(posts: json.map((post) => Post.fromJson(post)).toList());
  }

  @override
  String toString() {
    return 'PostList(posts: $posts)';
  }
}

class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );
  }

  @override
  String toString() {
    return 'Post(userId: $userId, id: $id, title: $title, body: $body)';
  }
}

Future<PostList?> fetchPostsDio() async {
  try {
    final response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts',
    );
    if (response.statusCode == 200) {
      return PostList.fromJson(response.data);
    } else {
      throw Exception('Lỗi từ server: ${response.statusCode}');
    }
  } on DioException catch (e) {
    throw Exception('Lỗi kết nối: ${e.message}');
  } catch (e) {
    throw Exception('Lỗi không xác định: $e');
  }
}
/*
void main() {
  fetchPostsDio();
}
*/