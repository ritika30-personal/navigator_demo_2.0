import 'package:flutter/material.dart';
import 'package:navigator_two/show_user.dart';
import 'package:navigator_two/userdetail.dart';
import 'package:navigator_two/userlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Model model = Model();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages:
        //// List of objects
        [
          MaterialPage(child: UserListPage(
              didUserSelected: (user){
                setState((){
                  model = Model(
                    index: user.index,
                    user: user.user,
                    desc:  "",
                  );
                });
              },
              didUser : (user){
                setState((){
                  model = Model(
                    index: user.index,
                    user: user.user,
                    desc:  user.desc,
                  );
                });
              }
          )),

          if(model.user.toString().isNotEmpty && model.desc.isEmpty)
            MaterialPage(
              child: UserDetailView(user: model.user,),
            )
          else if(model.desc.toString().isNotEmpty)
            MaterialPage(
              child: ShowUserPage(model: model),
            )
        ],
        onPopPage: (route,res){
          model = Model();
          return route.didPop(res);
        },
      ),
    );
  }
}











