import 'package:flutter/material.dart';

class UserDetailView extends StatelessWidget {
  final String? user;
  const UserDetailView({Key? key,this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user!),
      ),
      body: Center(
        child: Text(user!),
      ),
    );
  }
}