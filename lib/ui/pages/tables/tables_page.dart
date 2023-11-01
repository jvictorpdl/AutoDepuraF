import 'package:flutter/material.dart';

class TableContent {
  final String header;
  final List<(String, String)> content;

  const TableContent({
    required this.header,
    required this.content,
  });
}

class TablesPage extends StatelessWidget {
  TablesPage({super.key});

  final List<TableContent> values = [
    const TableContent(
      header: "Primário",
      content: [
        ("Tratamento Primario", "25 - 40"),
      ],
    ),
    const TableContent(
      header: "Lagoas de Estabilização",
      content: [
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario asd asd", "123123"),
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario", "25 - 40"),
      ],
    ),
    const TableContent(
      header: "Lagoas",
      content: [
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario", "25 - 40"),
        ("Tratamento Primario", "25 - 40"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(
              color: Colors.black,
            ),
            children: [
              for (var row in values)
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
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
