import 'package:flutter/material.dart';
import 'package:sobatsehat/screen/detail_product.dart';

// ignore: must_be_immutable
class Kategori extends StatelessWidget {
  String id;
  Kategori({required this.id});
  TextEditingController _searchContoller = TextEditingController();

  kategori(index) {
    if (index == '1') {
      return Text(
        'Sport Item',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      );
    } else if (index == '2') {
      return Text(
        'Healty Drink',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      );
    } else if (index == '3') {
      return Text(
        'Healty Food',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      );
    } else if (index == '4') {
      return Text(
        'Vitamin',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      );
    }
  }

  produk(index) {
    if (index == '1') {
      return Text('Jam');
    } else if (index == '2') {
      return Text('Kambucha');
    } else if (index == '3') {
      return Text('Protein Bar');
    } else if (index == '4') {
      return Text('Crearin 1');
    }
  }

  foto(index) {
    if (index == '1') {
      return Image.asset('images/p1.jpeg');
    } else if (index == '2') {
      return Image.asset('images/p3.jpeg');
    } else if (index == '3') {
      return Image.asset('images/p5.jpeg');
    } else if (index == '4') {
      return Image.asset('images/p6.jpeg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: kategori(id)),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            TextField(
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
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Produk(
                                  id: id,
                                )));
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          child: foto(id)),
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
                                  'Rp.${id}00.000,-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                produk(id)
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
