import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Akre {
  int no;
  String jurusan;
  String jenjang;
  String akreditasi;
  Akre(
      {required this.no,
      required this.jurusan,
      required this.jenjang,
      required this.akreditasi});
}

class AKREDITASI {
  List<Akre> ListPop = <Akre>[];

  AKREDITASI(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"];

    for (var val in data) {
      var no = int.parse(val["NO"]);
      var jurusan = val["JURUSAN"];
      var jenjang = val["JENJANG"];
      var akreditasi = val["AKREDITASI"];
      ListPop.add(Akre(
          no: no, jurusan: jurusan, jenjang: jenjang, akreditasi: akreditasi));
    }
  }
  //map dari json ke atribut
  factory AKREDITASI.fromJson(Map<String, dynamic> json) {
    return AKREDITASI(json);
  }
}

void main() {
  runApp(Akr());
}

class Akr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AkrState();
  }
}

//class state
class AkrState extends State<Akr> {
  late Future<AKREDITASI> futureAKREDITASI;

  String url = "https://ikuupii.herokuapp.com/akre";

  //fetch data
  Future<AKREDITASI> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return AKREDITASI.fromJson(jsonDecode(response.body));
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
        title: 'Akreditasi',
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
                child: FutureBuilder<AKREDITASI>(
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
                                      Text(snapshot.data!.ListPop[index].jurusan
                                          .toString()),
                                      Text(snapshot.data!.ListPop[index].jenjang
                                          .toString()),
                                      Text(snapshot
                                          .data!.ListPop[index].akreditasi
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
//   runApp(const Akreditasi());
// }

// class Akreditasi extends StatelessWidget {
//   const Akreditasi({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Akreditasi',
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
//             title: const Text("Akreditasi"),
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
//             Center(
//             child: FutureBuilder<AKREDITASI>(
//               future: futureAKREDITASI,
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return Center(
//                     //gunakan listview builder
//                     child: ListView.builder(
//                       itemCount: snapshot
//                           .data!.ListPop.length, //asumsikan data ada isi
//                       itemBuilder: (context, index) {
//                         return Container(
//                             decoration: BoxDecoration(border: Border.all()),
//                             padding: const EdgeInsets.all(14),
//                             child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(snapshot.data!.ListPop[index].no
//                                       .toString()),
//                                   Text(snapshot.data!.ListPop[index].jurusan
//                                       .toString()),
//                                   Text(snapshot.data!.ListPop[index].jenjang
//                                       .toString()),
//                                   Text(snapshot.data!.ListPop[index].akreditasi
//                                       .toString()),
//                                 ]));
//                       },
//                     ),
//                   );
//                 } else if (snapshot.hasError) {
//                   return Text('${snapshot.error}');
//                 }
//                 // By default, show a loading spinner.
//                 return const CircularProgressIndicator();
//               },
//             ),
//           ),
//           ])),
//     );
//   }
// }
