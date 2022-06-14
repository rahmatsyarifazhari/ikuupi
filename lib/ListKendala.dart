import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Home.dart';

void main() {
  runApp(const ListKendala());
}

class ListKendala extends StatelessWidget {
  const ListKendala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Kendala',
      home: Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            backgroundColor: HexColor("#E45826"),
            title: const Text("List Kendala"),
          ),
          body: Stack(children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: const AssetImage("images/isola.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
          )),
        ),
        ListView(padding: const EdgeInsets.all(5), children: [
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Column(children: [
                Text(
                  "FPMIPA",
                ),
                DataTable(
                  columns: <DataColumn>[
                    DataColumn(label: Text("No")),
                    DataColumn(label: Text("Nama Departemen")),
                    DataColumn(label: Text("Kendala")),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("1")),
                        DataCell(Text("Departemen Pendidikan Ilmu Komputer")),
                        DataCell(Text(
                            "Dosen dengan kualifikasi doktor masih rendah")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("2")),
                        DataCell(Text("Departemen Pendidikan Kimia")),
                        DataCell(Text(
                            "Dosen dengan kualifikasi doktor masih rendah")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("3")),
                        DataCell(Text("Departemen Pendidikan Biologi")),
                        DataCell(Text(
                            "Dosen dengan kualifikasi doktor masih rendah")),
                      ],
                    ),
                  ],
                ),
              ])),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FPIPS')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FIP')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FPBS')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FPSD')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FPTK')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FPOK')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('FPEB')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('K.D CIBIRU')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('K.D SUMEDANG')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('K.D TASIKMALAYA')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('K.D PURWAKARTA')),
          Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text('K.D SERANG')),
        ]),
      ])),
    );
  }
}
