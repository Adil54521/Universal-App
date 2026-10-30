import 'package:flutter/material.dart';
import 'package:flutter_application_1/authorization_send_data.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  filter: null, // Use the default LogFilter (-> only log in debug mode)
  printer: PrettyPrinter(), // Use the PrettyPrinter to format and print log
  output: null, // Use the default LogOutput (-> send everything to console)
);

class AuthorizationPageState extends StatefulWidget {
  const AuthorizationPageState({super.key});
  
  @override
  State<AuthorizationPageState> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPageState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _logincontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  String? forceErrorText;
  
  final SendData _sendData = SendData();
  
  void onChanged(String value) {
    // Nullify forceErrorText if the input changed.
    if (forceErrorText != null) {
      setState(() {
        forceErrorText = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const .symmetric(horizontal: 24.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: .center,
              children: <Widget>[
                TextFormField(
                  forceErrorText: forceErrorText,
                  controller: _logincontroller,
                  decoration: const InputDecoration(
                    hintText: 'Введите логин',
                  ),
                  onChanged: onChanged,
                ),
                TextFormField(
                  forceErrorText: forceErrorText,
                  controller: _passwordcontroller,
                  decoration: const InputDecoration(
                    hintText: 'Введите пароль',
                  ),
                  onChanged: onChanged,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Вот здесь, внутри функции нажатия кнопки, 
                    // мы берем текст из контроллера и отдаем в ваш метод!
                    _sendData.receivedData(_logincontroller.text, _passwordcontroller.text);
                  },
                  child: const Text('Отправить в бэк'),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}