import 'dart:io';

void main() async {
  final server = await HttpServer.bind('localhost', 9000);
  await for (var request in server) {
    request.response.write('Я Dart сервер!');
    request.response.close();
  }
}
