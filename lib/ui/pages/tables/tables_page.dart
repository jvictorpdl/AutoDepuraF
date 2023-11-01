import 'package:flutter/material.dart';

class TableContent {
  final String header;
  final List<(String, String)> content;

  const TableContent({
    required this.header,
    required this.content,
  });
}

class CustomTable extends StatelessWidget {
  final List<TableContent> tableObjects;
  const CustomTable({super.key, required this.tableObjects});

  // [
  //   const TableContent(
  //     header: "Primário",
  //     content: [
  //       ("Tratamento Primario", "25 - 40"),
  //     ],
  //   ),
  //   const TableContent(
  //     header: "Lagoas de Estabilização",
  //     content: [
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento Primario asd asd", "123123"),
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento Prima12312312rio", "25 - 40"),
  //     ],
  //   ),
  //   const TableContent(
  //     header: "Lagoas",
  //     content: [
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento Primario", "25 - 40"),
  //       ("Tratamento asdasdPrimario", "25 - 40"),
  //     ],
  //   ),
  // ];

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
                Column(
                  children: List.generate(
                    row.content.length,
                    (index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Text(
                        row.content[index].$1,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(
                    row.content.length,
                    (index) => Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Text(
                        row.content[index].$2,
                      ),
                    ),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
