import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LK {
  int no;
  String departemen;
  String kendala;
  LK({required this.no, required this.departemen, required this.kendala});
}

class Kendala {
  List<LK> ListPop = <LK>[];

  Kendala(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"];

    for (var val in data) {
      var no = int.parse(val["id"]);
      var departemen = val["Departemen"];
      var kendala = val["Kendala"];
      ListPop.add(LK(no: no, departemen: departemen, kendala: kendala));
    }
  }
  //map dari json ke atribut
  factory Kendala.fromJson(Map<String, dynamic> json) {
    return Kendala(json);
  }
}

void main() {
  runApp(ListKendala());
}

class ListKendala extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListKendalaState();
  }
}

//class state
class ListKendalaState extends State<ListKendala> {
  late Future<Kendala> futureAKREDITASI;

  String url = "https://ikuupi.herokuapp.com/kendala";

  //fetch data
  Future<Kendala> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return Kendala.fromJson(jsonDecode(response.body));
    } else {
      // jika gagal (bukan  200 OK),
      // lempar exception
      throw Exception('Gagal load');
    }
  }

  @override
  void initState() {
    super.initState();
    futureAKREDITASI = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'List Kendala',
        home: Scaffold(
            appBar: AppBar(
              leading: InkWell(
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onTap: () {
                  // Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
              ),
              centerTitle: true,
              backgroundColor: HexColor("#E45826"),
              title: const Text("Akreditasi"),
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
              Center(
                child: FutureBuilder<Kendala>(
                  future: futureAKREDITASI,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(
                        //gunakan listview builder
                        child: ListView.builder(
                          itemCount: snapshot
                              .data!.ListPop.length, //asumsikan data ada isi
                          itemBuilder: (context, index) {
                            return Container(
                                decoration: BoxDecoration(border: Border.all()),
                                padding: const EdgeInsets.all(14),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        margin: EdgeInsets.only(right: 100),
                                        decoration:
                                            BoxDecoration(border: Border.all()),
                                        child: Text(snapshot
                                            .data!.ListPop[index].no
                                            .toString()),
                                      ),
                                      Text(snapshot
                                          .data!.ListPop[index].departemen
                                          .toString()),
                                      Text(snapshot.data!.ListPop[index].kendala
                                          .toString()),
                                    ]));
                          },
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    // By default, show a loading spinner.
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ])));
  }
}

// void main() {
//   runApp(const ListKendala());
// }

// class ListKendala extends StatelessWidget {
//   const ListKendala({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'List Kendala',
//       home: Scaffold(
//           appBar: AppBar(
//             leading: InkWell(
//               child: Icon(
//                 Icons.home,
//                 color: Colors.white,
//               ),
//               onTap: () {
//                 // Navigator.pop(context);
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) {
//                   return Home();
//                 }));
//               },
//             ),
//             centerTitle: true,
//             backgroundColor: HexColor("#E45826"),
//             title: const Text("List Kendala"),
//           ),
//           body: Stack(children: [
//             Container(
//               height: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: const AssetImage("images/isola.jpg"),
//                 colorFilter: ColorFilter.mode(
//                     Colors.black.withOpacity(0.2), BlendMode.dstATop),
//               )),
//             ),
//             ListView(padding: const EdgeInsets.all(5), children: [
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Column(children: [
//                     Text(
//                       "FPMIPA",
//                     ),
//                     DataTable(
//                       columns: <DataColumn>[
//                         DataColumn(label: Text("No")),
//                         DataColumn(label: Text("Nama Departemen")),
//                         DataColumn(label: Text("Kendala")),
//                       ],
//                       rows: <DataRow>[
//                         DataRow(
//                           cells: <DataCell>[
//                             DataCell(Text("1")),
//                             DataCell(
//                                 Text("Departemen Pendidikan Ilmu Komputer")),
//                             DataCell(Text(
//                                 "Dosen dengan kualifikasi doktor masih rendah")),
//                           ],
//                         ),
//                         DataRow(
//                           cells: <DataCell>[
//                             DataCell(Text("2")),
//                             DataCell(Text("Departemen Pendidikan Kimia")),
//                             DataCell(Text(
//                                 "Dosen dengan kualifikasi doktor masih rendah")),
//                           ],
//                         ),
//                         DataRow(
//                           cells: <DataCell>[
//                             DataCell(Text("3")),
//                             DataCell(Text("Departemen Pendidikan Biologi")),
//                             DataCell(Text(
//                                 "Dosen dengan kualifikasi doktor masih rendah")),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ])),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FPIPS')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FIP')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FPBS')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FPSD')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FPTK')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FPOK')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('FPEB')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('K.D CIBIRU')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('K.D SUMEDANG')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('K.D TASIKMALAYA')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('K.D PURWAKARTA')),
//               Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   padding: EdgeInsets.all(14),
//                   child: Text('K.D SERANG')),
//             ]),
//           ])),
//     );
//   }
// }
