import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:yatube/api.dart';
import 'package:yatube/blocs/favorite_bloc.dart';
import 'package:yatube/blocs/videos_bloc.dart';
import 'package:yatube/screens/home.dart';


void main() {

  Api api = Api();
  api.search("eletro");

  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: BlocProvider(
        bloc: FavoriteBloc(),
        child: MaterialApp(
          title: 'Yatube',
          debugShowCheckedModeBanner: false,
          home: Home(),
        ),
      )
    );
  }
}