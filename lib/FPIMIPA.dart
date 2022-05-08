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
                      'Pendidikan Matematika',
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
                        'Pendidikan Fisika',
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
                        'Pendidikan Biologi',
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
                        'Pendidikan Kimia',
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
                        'Pendidikan Ilmu Komputer',
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
                        'Matematika',
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
                        'Fisika',
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
                        'Biologi',
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
                        'Kimia',
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
                        'Ilmu Komputer',
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
                        'IPSE',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                ]),
          )
        ],
      )),
    );
  }
}
