import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const PKN());
}

class PKN extends StatelessWidget {
  const PKN({Key? key}) : super(key: key);

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
                        DataColumn(label: Text("Persentase")),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("1")),
                            DataCell(Text("Fasilitas memadai")),
                            DataCell(Text(" 95% " )),
                          ],
                        ),
                        DataRow(cells: <DataCell>[
                          DataCell(Text("2")),
                          DataCell(Text("Tenaga pengajar berkualitas")),
                          DataCell(Text(" 90% " )),
                        ]),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("3")),
                            DataCell(Text("Beasiswa prestasi")),
                            DataCell(Text(" 75% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("4")),
                            DataCell(Text("Persentase mata kuliah yang mengunakan pembelajaran daring (blended learning)")),
                            DataCell(Text(" 85% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("5")),
                            DataCell(Text("Persentase lulusan bersertifikat kompetensi")),
                            DataCell(Text(" 75% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("6")),
                            DataCell(Text("Persentase keterserapan lulusan")),
                            DataCell(Text(" 85% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("7")),
                            DataCell(Text("Presentasi kelulusan mahasiswa PPG")),
                            DataCell(Text(" 75% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("8")),
                            DataCell(Text("Persentase kelulusan mahasiswa tepat waktu")),
                            DataCell(Text(" 60% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("9")),
                            DataCell(Text("Artikel hasil penelitian yang dipublikasikan pada jurnal bereputasi")),
                            DataCell(Text(" 85% " )),
                          ]),
                          DataRow(
                          cells: <DataCell>[
                            DataCell(Text("10")),
                            DataCell(Text("Tingkat keketatan peminat (calon mahasiswa baru)")),
                            DataCell(Text(" 100% " )),
                          ]),
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
