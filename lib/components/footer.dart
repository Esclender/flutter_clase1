import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyFooter extends StatefulWidget {
  const MyFooter({super.key});

  @override
  State<MyFooter> createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  List<bool> btnsChosed = [false, true, false];
  late List<Widget> btns;

  void chosedBtn(int index) {
    dynamic list = btnsChosed.asMap().entries.map((entry) {
      int idx = entry.key;
      return idx == index;
    }).toList();

    setState(() {
      btnsChosed = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white,
            Color.fromARGB(255, 160, 159, 159),
            Color.fromARGB(255, 255, 255, 255),
          ],
          stops: [0.0, 0.3, 0.4, 0.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...btnsChosed.asMap().entries.map(
              (e) {
                int index = e.key;
                return MyButton(
                  chosed: btnsChosed[index],
                  ind: index,
                  changeState: chosedBtn,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final bool chosed;
  final int ind;
  final void Function(int) changeState;
  const MyButton({
    super.key,
    this.chosed = false,
    required this.ind,
    required this.changeState,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.chosed ? 100 : 80,
      height: widget.chosed ? 100 : 80,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FloatingActionButton(
          onPressed: () {
            widget.changeState(widget.ind);
          },
          shape: const CircleBorder(),
          backgroundColor: HexColor("#0b2863"),
          elevation: 10.0,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
