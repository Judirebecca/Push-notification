// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final dynamic extraData;
  const HomeScreen({
    Key? key,
    required this.extraData,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('HomeScreen'),
          onPressed: () {},
        ),
      ),
    );
  }
}
