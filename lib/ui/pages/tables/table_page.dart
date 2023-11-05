import 'package:auto_depura/ui/pages/tables/custom_table.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
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
          child: Column(
            children: [
              const SizedBox(height: 18.0),
              CustomTable(tableObjects: tableObjects),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: AppColors.accent,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Ok",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
