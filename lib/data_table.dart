import 'package:flutter/material.dart';

class DataTabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Data Table"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: DataTable(
          columns: [
            DataColumn(label: Text("Nama")),
            DataColumn(label: Text("Nirm")),
            DataColumn(label: Text("Kelas"))
          ], 
          rows: [
            DataRow(cells: [
              DataCell(Text("Anto")),
              DataCell(Text("2018028099")),
              DataCell(Text("6SIA4"))
            ]),
            DataRow(cells: [
              DataCell(Text("Budi")),
              DataCell(Text("2018028082")),
              DataCell(Text("6SIA12"))
            ]),
            DataRow(cells: [
              DataCell(Text("Bambang")),
              DataCell(Text("2012028099")),
              DataCell(Text("6SIA1"))
            ])
          ]
        ),
      ),
    );
  }
}
