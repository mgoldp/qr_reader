import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = 0;
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.map_outlined,
            color: Colors.deepPurple,
          ),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.blur_circular_sharp,
            color: Colors.deepPurple,
          ),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
