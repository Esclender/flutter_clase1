import 'package:flutter/material.dart';
import 'package:flutter_clase_1/components/footer.dart';
import 'package:flutter_clase_1/components/image_view.dart';
import 'package:flutter_clase_1/components/my_app_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: const MyAppBody(),
        ),
      ),
      bottomNavigationBar: const MyFooter(),
    );
  }
}
