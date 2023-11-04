import 'package:auto_depura/ui/pages/tables/custom_table.dart';
import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  final List<TableContent> tableObjects;
  const TablePage({super.key, required this.tableObjects});

  static void show(
    BuildContext context, {
    required List<TableContent> tableObjects,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TablePage(tableObjects: tableObjects),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomTable(tableObjects: tableObjects),
        ),
      ),
    );
  }
}
