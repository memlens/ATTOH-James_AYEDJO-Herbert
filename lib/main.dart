import 'package:flutter/material.dart';
import 'pages/candidate_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candidate App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0X5e8851)),
          useMaterial3: true),
      home: CandidateListPage(candidates: [],),
    );
  }
}
