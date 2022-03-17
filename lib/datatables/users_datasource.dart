import 'package:flutter/material.dart';

class UsersDataSource extends DataTableSource {
  @override
  DataRow getRow(int index) {
    // TODO: implement getRow
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text('cell: #$index')),
      DataCell(Text('cell: #$index')),
      DataCell(Text('cell: #$index')),
      DataCell(Text('cell: #$index')),
      DataCell(Text('cell: #$index')),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 100;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
