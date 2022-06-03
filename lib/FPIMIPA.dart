import 'package:flutter/material.dart';
import 'IKU.dart';

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
            title: const Text('FPMIPA'),
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
                                image: AssetImage("images/ILMUKOMPUTER.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/FISIKA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/BIOLOGI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                          ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/KIMIA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                          ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/MATEMATIKA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                         ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/IPSE.png"))),
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
