import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const FIP());
}

class FIP extends StatelessWidget {
  const FIP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRID',
      home: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
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
            title: const Text('FIP'),
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
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/UPI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: const Text(
                            'Bimbingan dan Konseling',
                            style: TextStyle(backgroundColor: Colors.white),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/ADPEN.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage("images/UPI.png"))),
                            padding: const EdgeInsets.all(14),
                            margin: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            child: const Text(
                              'Pendidikan Luar Sekolah',
                              style: TextStyle(backgroundColor: Colors.white),
                            )),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage("images/UPI.png"))),
                            padding: const EdgeInsets.all(14),
                            margin: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            child: const Text(
                              'Pendidikan Luar Biasa',
                              style: TextStyle(backgroundColor: Colors.white),
                            )),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/TEKPEN.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/PGSDBUMSIL.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("images/PGPAUDBUMSIL.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/PSIKOLOGI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage("images/UPI.png"))),
                            padding: const EdgeInsets.all(14),
                            margin: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            child: const Text(
                              'Perpustakaan & Informasi',
                              style: TextStyle(backgroundColor: Colors.white),
                            )),
                        onTap: () {},
                      ),
                    ]),
              )
            ],
          )),
    );
  }
}
