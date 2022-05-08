import 'package:flutter/material.dart';

void main() {
  runApp(const FPMIPA());
}

class FPMIPA extends StatelessWidget {
  const FPMIPA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRID',
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('Hello'),
          // ),
          body: Stack(
        children: [
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
            child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(),
                        image: const DecorationImage(
                            image: AssetImage("images/UPI.png"))),
                    padding: const EdgeInsets.all(14),
                    margin: const EdgeInsets.all(20),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      'Pendidikan Kewarganegaraan',
                      style: TextStyle(backgroundColor: Colors.white),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Pendidikan Sejarah',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Pendidikan Geografi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'llmu Pendidikan Agama Islam',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Manajemen Resort & Leisure',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Manajemen Pemasaran Pariwisata',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Manajemen Industri Katering',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Pendidikan Ilmu Pengetahuan Sosial',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Ilmu Komunikasi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Pendidikan Sosiologi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                ]),
          )
        ],
      )),
    );
  }
}
