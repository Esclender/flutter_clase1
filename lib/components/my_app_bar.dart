import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clase_1/bloc/interactions.dart';
import 'package:hexcolor/hexcolor.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#0b2863"),
      title: const Text(
        'My app bar',
        style: TextStyle(color: Colors.white, fontFamily: 'blinker'),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.read<LikeInteraction>().like();
          },
          icon: const Icon(Icons.favorite),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.zoom_in,
          ),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.zoom_out),
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
