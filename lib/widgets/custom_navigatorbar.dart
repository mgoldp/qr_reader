import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.blur_circular_sharp),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
