import 'package:flutter/material.dart';
import 'package:sobatsehat/screen/bnb.dart';

// ignore: must_be_immutable
class Password extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _kodeContoller = TextEditingController();
  TextEditingController _resetpwContoller = TextEditingController();
  TextEditingController _resetpw2Contoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('images/bggreen.png'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Perhatian!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'Kode unik telah dikirim ke nomor handphone anda. Silahkan cek dan masukkan ke bawah ini')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 2),
                            blurRadius: 2),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(-2, 2),
                            blurRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _kodeContoller,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: 'Kode Unik',
                                fillColor: Color(0xffD9D9D9).withOpacity(0.4),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              controller: _resetpwContoller,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  hintText: 'Password baru',
                                  fillColor: Color(0xffD9D9D9).withOpacity(0.4),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          TextFormField(
                            controller: _resetpw2Contoller,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: 'Ulangi Password',
                                fillColor: Color(0xffD9D9D9).withOpacity(0.4),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: Color(0xff22CF33),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Bnb()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      'R e s e t',
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
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: Color(0xff22CF33).withOpacity(0.1),
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
                                        color: Color(0xff22CF33)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
