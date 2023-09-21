import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clase_1/bloc/interactions.dart';
import 'package:flutter_clase_1/views/main_view.dart';

void main() {
  runApp(const MyApp());
}

class BlocsProvider extends StatelessWidget {
  const BlocsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LikeInteraction()),
      ],
      child: const MainView(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Prueba',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BlocsProvider(),
      debugShowCheckedModeBanner: false,
    );
  }
}
