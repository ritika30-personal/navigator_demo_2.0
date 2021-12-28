import 'package:flutter/material.dart';
import 'package:navigator_two/userlist.dart';

class ShowUserPage extends StatefulWidget {
  final Model? model;
  const ShowUserPage({Key? key,this.model }) : super(key: key);

  @override
  _ShowUserPageState createState() => _ShowUserPageState();
}

class _ShowUserPageState extends State<ShowUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model!.user),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.model!.user + " : " + widget.model!.index.toString()),
              Text(widget.model!.desc,maxLines: null,),
            ],
          ),
        ),
      ),
    );
  }
}
