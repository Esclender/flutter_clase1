import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clase_1/bloc/interactions.dart';
import 'package:flutter_clase_1/styles/gradient.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class MyAppBody extends StatefulWidget {
  const MyAppBody({super.key});

  @override
  State<MyAppBody> createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: HexColor("#0b2863"),
          ),
          onPressed: () {},
          icon: const Icon(Icons.save, color: Colors.white),
          label: const Text(
            "Guardar",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Gap(40),
        Container(
          margin: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), gradient: bg),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/imgs/icons8-flutter.svg",
                    height: 180,
                  ),
                  const Text(
                    "Flutter",
                    style: TextStyle(
                        fontFamily: "blinker",
                        fontSize: 40,
                        color: Colors.white),
                  )
                ],
              ),
              AnimatedOpacity(
                opacity:
                    context.watch<LikeInteraction>().state == true ? 1.0 : 0.0,
                duration: const Duration(seconds: 2),
                child: const Icon(Icons.favorite,
                    size: 150.0, color: Color.fromARGB(113, 244, 67, 54)),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              size: 40.0,
              color: HexColor("#0b2863"),
            ),
            const Gap(5),
            Text(
              "Aprendiendo en certus!",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: HexColor("#0b2863"),
              ),
            )
          ],
        )
      ],
    );
  }
}
