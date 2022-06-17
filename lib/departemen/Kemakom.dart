import 'package:flutter/material.dart';
import 'package:iku_application/fakultas/FPIMIPA.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LK {
  int id;
  String progress;
  String persentase;
  LK({required this.id, required this.progress, required this.persentase});
}

class Progress {
  List<LK> ListPop = <LK>[];

  Progress(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"];

    for (var val in data) {
      var id = int.parse(val["id"]);
      var progress = val["Progress"];
      var persentase= val["Persentase"];
      ListPop.add(LK(id: id, progress: progress, persentase: persentase));
    }
  }
  //map dari json ke atribut
  factory Progress.fromJson(Map<String, dynamic> json) {
    return Progress(json);
  }
}

void main() {
  runApp(Kemakom());
}

class Kemakom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KemakomState();
  }
}

//class state
class KemakomState extends State<Kemakom> {
  late Future<Progress> futureAKREDITASI;

  String url = "https://ikuupiii.herokuapp.com/progress";

  //fetch data
  Future<Progress> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return Progress.fromJson(jsonDecode(response.body));
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
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
                 onTap: () {
                Navigator.pop(context);
              },
              ),
              centerTitle: true,
              backgroundColor: HexColor("#E45826"),
              title: const Text("Progress"),
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
                child: FutureBuilder<Progress>(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        // padding: EdgeInsets.all(15),
                                        // margin: EdgeInsets.only(right: 100),
                                        // decoration:
                                        //     BoxDecoration(border: Border.all()),
                                        child: Text(snapshot
                                            .data!.ListPop[index].id
                                            .toString()),
                                      ),
                                      Container(
                                        // decoration:
                                        //     BoxDecoration(border: Border.all()),
                                        child: Text(snapshot
                                            .data!.ListPop[index].progress
                                            .toString()),
                                      ),
                                      Container(
                                        // decoration:
                                        //     BoxDecoration(border: Border.all()),
                                        child: Text(snapshot
                                            .data!.ListPop[index].persentase
                                            .toString()),
                                      )
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
