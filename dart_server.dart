import 'dart:io';

void main() async {
  await HttpServer.bind('localhost', 9000)
    ..forEach((request) {
      request.response.write('Hello Dart!');
      request.response.close();
    });
}
