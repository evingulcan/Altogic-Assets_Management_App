import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  final String name;
  final String text;
  const ContainerWidget({
    Key? key,
    required this.name,
    required this.text,
  }) : super(key: key);

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(children: [
        Container(
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/img/bilgisayar.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200, left: 20),
          child: Column(
            children: [
              Text(
                widget.name,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                widget.text,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
