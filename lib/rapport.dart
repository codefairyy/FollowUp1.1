// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:follow_up_11/Patient/page1.dart';
import 'QstMed.dart';

class WyDataTable extends StatefulWidget {
  const WyDataTable({Key? key}) : super(key: key);

  @override
  _WyDataTableState createState() => _WyDataTableState();
}

class _WyDataTableState extends State<WyDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _baseDataTable(),
      ),
    );
  }

  _baseDataTable() {
    return DataTable(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 105, 67, 243),
        borderRadius: BorderRadius.circular(25),
      ),
      dataRowColor: MaterialStateProperty.all(Colors.white),
      columns: [
        DataColumn(
            label: Text(
          'Nom',
        )),
        DataColumn(label: Text(MyAppState.newTaskTitle)),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Taux de glycemie')),
          DataCell(Text(Q2.newTaskTitle)),
        ]),
        DataRow(cells: [
          DataCell(Text('prise de medicament')),
          DataCell(Text(Q4.newTaskTitle)),
        ]),
        DataRow(cells: [
          DataCell(Text('régime alimentaire')),
          DataCell(Text(Q6.newTaskTitle)),
        ]),
        DataRow(cells: [
          DataCell(Text('Symptome Hyper/Hypo glycémie')),
          DataCell(Text(Q7.newTaskTitle)),
        ]),
      ],
    );
  }
}
