import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sobatsehat/screen/auth_login.dart';
import 'package:sobatsehat/screen/detail_category.dart';
import 'package:sobatsehat/screen/detail_product.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  TextEditingController _searchContoller = TextEditingController();

  kategori(index) {
    if (index == 1) {
      return Text('Sport Item');
    } else if (index == 2) {
      return Text('Healty Drink');
    } else if (index == 3) {
      return Text('Healty Food');
    } else if (index == 4) {
      return Text('Vitamin');
    }
  }

  produk(index) {
    if (index == 1) {
      return Text('Jam');
    } else if (index == 2) {
      return Text('Barbel');
    } else if (index == 3) {
      return Text('Kambucha');
    } else if (index == 4) {
      return Text('Infuse Water');
    } else if (index == 5) {
      return Text('Protein Bar');
    } else if (index == 6) {
      return Text('Crearin 1');
    } else if (index == 7) {
      return Text('Creatin 2');
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Beranda',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        content: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: width,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        'L o g o u t',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        'B a t a l',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                height: width / 10,
                child: Image.asset('images/profile.png'),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              'Produk',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: CarouselSlider(
                  items: [
                    Image.asset('images/cs1.png'),
                    Image.asset('images/cs2.png'),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 2),
                  )),
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xff80DC89),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kategori',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 10, bottom: 5),
                                  child: InkWell(
                                    onTap: () {
                                      var idx = index + 1;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Kategori(
                                                    id: idx.toString(),
                                                  )));
                                    },
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/${index + 1}.jpeg'),
                                          radius: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              12,
                                        ),
                                        kategori(index + 1)
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextField(
                controller: _searchContoller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Katalog',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 5 / 4.5,
              ),
              itemBuilder: (context, index) {
                var idx = index + 1;
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Produk(
                                  id: idx.toString(),
                                )));
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          child: Image.asset('images/p${index + 1}.jpeg')),
                      LayoutBuilder(builder: (context, constraint) {
                        return Container(
                          height: constraint.maxHeight / 2.4,
                          width: constraint.maxWidth,
                          decoration: BoxDecoration(
                              color: Color(0xffE2E2E2).withOpacity(0.8),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rp.${index + 1}00.000,-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                produk(index + 1)
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
