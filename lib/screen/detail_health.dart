import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailHealth extends StatelessWidget {
  String judul;
  DetailHealth({required this.judul});

  foto(String idx) {
    if (idx == 'Seputar Gizi') {
      return Image.asset('images/g1.jpg');
    } else {
      return Image.asset('images/j2.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size.width / 8;
    var b = MediaQuery.of(context).size.width / 15;
    var c = MediaQuery.of(context).size.width;
    var f = MediaQuery.of(context).size.width / 22;
    var d = c - a - b - f;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff22CF33),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.share)),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: foto(judul),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: f,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.width / 8,
                        width: MediaQuery.of(context).size.width / 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Icon(
                          Icons.close,
                          size: MediaQuery.of(context).size.width / 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: d,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width / 15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        color: Color(0xffD9D9D9),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  color: Color(0xffD9D9D9)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Written by brzenska')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  judul,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          SizedBox(
            height: 55,
          )
        ],
      ),
    );
  }
}
