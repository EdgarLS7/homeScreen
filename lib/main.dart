import 'package:flutter/material.dart';
import 'package:template_kudos_view/ui/contact_list_page.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff23202a),
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple[400],
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white70,
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.grey[800]),
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      home: const ContactListPage(),
    );
  }
}
