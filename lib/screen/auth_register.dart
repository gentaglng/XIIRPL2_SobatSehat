import 'package:flutter/material.dart';
import 'package:sobatsehat/screen/auth_login.dart';

import 'bnb.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaContoller = TextEditingController();
  TextEditingController _kotaContoller = TextEditingController();
  TextEditingController _tahunContoller = TextEditingController();
  TextEditingController _nomorContoller = TextEditingController();
  TextEditingController _usernameContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              width: width, child: Image.asset('images/backgrondleft.png')),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      height: width / 2,
                      width: width / 2,
                      child: Image.asset('images/profile.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        'Selamat datang..',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                                controller: _namaContoller,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: 'Nama',
                                    fillColor:
                                        Color(0xffD9D9D9).withOpacity(0.4),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: TextFormField(
                                  controller: _kotaContoller,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: 'Asal Kota',
                                      fillColor:
                                          Color(0xffD9D9D9).withOpacity(0.4),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              TextFormField(
                                controller: _tahunContoller,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: 'Tahun Kelahiran',
                                    fillColor:
                                        Color(0xffD9D9D9).withOpacity(0.4),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: TextFormField(
                                  controller: _nomorContoller,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: 'Nomor HP',
                                      fillColor:
                                          Color(0xffD9D9D9).withOpacity(0.4),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              TextFormField(
                                controller: _usernameContoller,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: 'Username',
                                    fillColor:
                                        Color(0xffD9D9D9).withOpacity(0.4),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: TextFormField(
                                  controller: _passwordController,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      fillColor:
                                          Color(0xffD9D9D9).withOpacity(0.4),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              Container(
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
                                        'R e g i s t e r',
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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Container(
                                  width: width,
                                  height: 1,
                                  color: Colors.grey,
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        'L o g i n',
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
                              Text(
                                'jika sudah punya akun',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
