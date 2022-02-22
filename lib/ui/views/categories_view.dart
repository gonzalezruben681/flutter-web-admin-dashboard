import 'package:admin_dashboard/ui/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'package:admin_dashboard/datatables/categories_datasource.dart';

import 'package:admin_dashboard/ui/labels/custom_labels.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Categorias', style: CustomLabels.h1),
          SizedBox(height: 10),
          PaginatedDataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Categoria')),
              DataColumn(label: Text('Creado por')),
              DataColumn(label: Text('Acciones')),
            ],
            source: CategoriesDTS(),
            header: Text('Categorias disponibles', maxLines: 2),
            onRowsPerPageChanged: (value) {
              setState(() {
                _rowsPerPage = value ?? 10; //value ?? 10
              });
            },
            rowsPerPage: _rowsPerPage,
            actions: [
              CustomIconButton(
                icon: Icons.add_outlined,
                text: 'Crear',
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
