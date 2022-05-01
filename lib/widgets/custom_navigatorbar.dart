import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
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
