import 'package:dio/dio.dart';
import 'package:learnflutter/main.dart';
final dio = Dio();

Future<void> fetchPostsDio() async {
  try {
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      log.d('Dữ liệu đã nhận:');
      log.d(response.data[0]); // Dio tự động giải mã JSON
    }
  } on DioException catch (e) {
    if (e.response != null) {
      log.d('Lỗi từ server: ${e.response?.statusCode}');
    } else {
      log.d('Lỗi kết nối: ${e.message}');
    }
  }
}
/*
void main() {
  fetchPostsDio();
}
*/