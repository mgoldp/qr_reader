import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/scan_list_provider.dart';
import '../utils/utils.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({
    Key? key,
    required this.tipo,
  }) : super(key: key);

  final String tipo;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.deepPurple.shade800,
        ),
        onDismissed: (DismissDirection direction) {
          final swipeScanListProvider =
              Provider.of<ScanListProvider>(context, listen: false);
          swipeScanListProvider.borrarScanPorId(scans[i].id!);
        },
        child: ListTile(
          leading: Icon(
            tipo == 'http' ? Icons.link_outlined : Icons.map_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(scans[i].valor),
          subtitle: Text(scans[i].id.toString()),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey,
          ),
          onTap: () => launchUrlUtil(context, scans[i]),
        ),
      ),
    );
  }
}
