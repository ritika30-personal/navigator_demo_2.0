import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
   final   ValueChanged? didUserSelected;
   final   ValueChanged? didUser;
  const UserListPage({Key? key, this.didUserSelected, this.didUser}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List lst = [
  {"user": "kyra",
    "desc" : "Hello!! kyra find the details"},
    {"user" : "Andrew",
    "desc" : "Hello!! Andrew find the details"
    },
    { "user" : "Nelson",
      "desc" : "Hello!! Nelson find the details"},
    {"user" : "Eric",
      "desc" : "Hello!! Eric find the details"},
    {"user" : "Kyle",
      "desc" : "Hello!! Kyle find the details"}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User list"),
      ),
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context,i){
          final user = lst[i]["user"];
          final desc = lst[i]["desc"];
          return Card(
            child: ListTile(
              title: Text(user),
              subtitle: Text(desc),
              trailing: InkWell(
                onTap:() => widget.didUser!(Model(
                    index: i,
                    user: user,
                    desc: desc
                )),
                child: const Icon(
                  Icons.arrow_forward_ios
                ),
              ),
              onTap: () {
                widget.didUserSelected!(Model(
                  index: i,
                  user: user,
                  desc: desc
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

class Model{
  int index;
  String user;
  String desc;
  Model({this.index = 0,this.desc = "",this.user = ""});
}