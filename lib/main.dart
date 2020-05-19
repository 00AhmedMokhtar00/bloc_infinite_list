import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'bloc/bloc.dart';
import 'bloc/bloc_delegate.dart';
import 'ui/home_page.dart';

void main(){
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Infinite Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: BlocProvider(
          create: (context) =>
          PostBloc(httpClient: http.Client())..add(Fetch()),
          child: HomePage(),
        ),
      ),
    );
  }
}
