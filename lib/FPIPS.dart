import 'package:flutter/material.dart';
import 'IKU.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const FPIPS());
}

class FPIPS extends StatelessWidget {
  const FPIPS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRID',
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('Hello'),
          // ),
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
            title: const Text('FPIPS'),
          ),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/PKN.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/SEJARAH.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                          ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/GEOGRAFI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
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
                            'Pendidikan Agama Islam',
                            style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.white),
                          )
                          ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/MRL.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                          ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/MPP.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/MIKA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/IPS.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/ILMUKOMUNIKASI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/SOSIOLOGI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                    ]),
              )
            ],
          )),
    );
  }
}
