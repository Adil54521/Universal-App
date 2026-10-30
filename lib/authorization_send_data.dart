import 'package:flutter_application_1/authorizationform.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

var logger = Logger(
  filter: null, // Use the default LogFilter (-> only log in debug mode)
  printer: PrettyPrinter(), // Use the PrettyPrinter to format and print log
  output: null, // Use the default LogOutput (-> send everything to console)
);

class SendData {
  String login = '';
  String password = '';

  void receivedData(String login, String password) {
    this.login = login;
    this.password = password;
    print("your login - $login, your password - $password ");
  }

  Future<void> sendRequest() async {
    var url = Uri.https('example.com', 'whatsit/create');
    var response = await http.post(url, body: {
      'login': login ?? '', // Если null, отправит пустую строку
      'password': password ?? '',
    });
  }

}