import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Produk extends StatelessWidget {
  String id;
  Produk({required this.id});

  kategori(index) {
    if (index == '1') {
      return Text(
        'Sport Item',
        style: TextStyle(fontSize: 16),
      );
    } else if (index == '3') {
      return Text(
        'Healty Drink',
        style: TextStyle(fontSize: 16),
      );
    } else if (index == '5') {
      return Text(
        'Healty Food',
        style: TextStyle(fontSize: 16),
      );
    } else if (index == '6') {
      return Text(
        'Vitamin',
        style: TextStyle(fontSize: 16),
      );
    } else {
      return Text(
        'Tes',
        style: TextStyle(fontSize: 16),
      );
    }
  }

  produk(index) {
    if (index == '1') {
      return Text(
        'Jam',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    } else if (index == '2') {
      return Text(
        'Barbel',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    } else if (index == '3') {
      return Text(
        'Kambucha',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    } else if (index == '4') {
      return Text(
        'Infuse Water',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    } else if (index == '5') {
      return Text(
        'Protein Bar',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    } else if (index == '6') {
      return Text(
        'Crearin 1',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    } else if (index == '7') {
      return Text(
        'Creatin 2',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
      );
    }
  }

  foto(index) {
    if (index == '1') {
      return Image.asset('images/p1.jpeg');
    } else if (index == '2') {
      return Image.asset('images/p2.jpeg');
    } else if (index == '3') {
      return Image.asset('images/p3.jpeg');
    } else if (index == '4') {
      return Image.asset('images/p4.jpeg');
    } else if (index == '5') {
      return Image.asset('images/p5.jpeg');
    } else if (index == '6') {
      return Image.asset('images/p6.jpeg');
    } else if (index == '7') {
      return Image.asset('images/p7.jpeg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xff22CF33),
          onPressed: () {
            Navigator.pop(context);
          },
          label: Text(
            'Beli Sekarang',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      backgroundColor: Color(0xffE9FBEB),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: foto(id)),
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
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
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width / 8,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffE9FBEB),
                          borderRadius: BorderRadiusDirectional.vertical(
                              top: Radius.circular(
                                  MediaQuery.of(context).size.width / 8))),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFDD87)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xffFD9B07),
                                  ),
                                ))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 16,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: produk(id),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
            child: Text(
              'Rp${id}00.000,-',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Detail',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 60, left: 15, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kategori',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Merek',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Stok',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Terjual',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Deskripsi',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kategori(id),
                      kategori(id),
                      Text(
                        '${id}',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '${id}',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
