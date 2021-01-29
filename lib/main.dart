import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahel_habitat_flutter_app/View/home.dart';
import 'package:sahel_habitat_flutter_app/Provider/UsersProvider.dart';
import 'package:firebase_core/firebase_core.dart';


void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (context) => UsersProvider(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: home()
      ),
    );
  }
}

