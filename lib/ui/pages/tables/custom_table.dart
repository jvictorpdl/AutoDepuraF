import 'package:flutter/material.dart';

class TableContent {
  final String header;
  final List<List<String>> content;

  const TableContent({
    required this.header,
    required this.content,
  });
}

class CustomTable extends StatelessWidget {
  final List<TableContent> tableObjects;
  const CustomTable({super.key, required this.tableObjects});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
        border: TableBorder.all(
          color: Colors.black,
        ),
        children: [
          for (var row in tableObjects)
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    row.header,
                    textAlign: TextAlign.center,
                  ),
                ),
                ...row.content.map(
                  (cell) => IntrinsicHeight(
                    child: TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          cell.length,
                          (index) => Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Text(
                                cell[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: List.generate(
                //     row.content.length,
                //     (index) => Container(
                //       width: double.infinity,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Colors.grey,
                //         ),
                //       ),
                //       child: Text(
                //         row.content[index].$2,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            )
        ],
      ),
    );
  }
}
