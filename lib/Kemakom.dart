import 'package:flutter/material.dart';
import 'FPIMIPA.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const Kemakom());
}

class Kemakom extends StatelessWidget {
  const Kemakom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress dan Kendala',
      home: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            backgroundColor: HexColor("#E45826"),
            title: const Text('Progress dan Kendala IKU'),
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
                      "Progress IKU",
                    ),
                    DataTable(
                      columns: <DataColumn>[
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Progress")),
                        DataColumn(label: Text("Status")),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("1")),
                            DataCell(Text("Fasilitas memadai")),
                            DataCell(Checkbox(
                              value: true,
                              onChanged: (value) {},
                            )),
                          ],
                        ),
                        DataRow(cells: <DataCell>[
                          DataCell(Text("2")),
                          DataCell(Text("Tenaga pengajar berkualitas")),
                          DataCell(Checkbox(
                            value: true,
                            onChanged: (value) {},
                          )),
                        ]),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("3")),
                            DataCell(Text("Beasiswa prestasi")),
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {},
                            )),
                          ],
                        ),
                      ],
                    ),
                  ])),
              Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.all(14),
                  child: Column(children: [
                    Text(
                      "Kendala IKU",
                    ),
                    DataTable(
                      columns: <DataColumn>[
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Kendala")),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("1")),
                            DataCell(Text(
                                "Dosen dengan kualifikasi doktor masih rendah")),
                          ],
                        ),
                      ],
                    ),
                  ]))
            ]),
          ])),
    );
  }
}
