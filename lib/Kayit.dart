import 'package:flutter/material.dart';

import 'checkbox1.dart';


class Kayit extends StatefulWidget {
  const Kayit({Key? key}) : super(key: key);

  @override
  State<Kayit> createState() => _KayitState();
}

enum Fruit { Erkek, Kadin, Diger }

class _KayitState extends State<Kayit> {
  final TextEditingController _emailnameController = TextEditingController();
  final TextEditingController _nameConroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _yasController = TextEditingController();
  final TextEditingController _cinsiyetController = TextEditingController();



  Fruit? _fruit = Fruit.Diger;

  final List<DropdownMenuItem<Fruit>> genderList = [
    DropdownMenuItem(
      value: Fruit.Erkek,
      child: Text('Erkek'),
    ),
    DropdownMenuItem(
      value: Fruit.Kadin,
      child: Text('Kadın'),
    ),
    DropdownMenuItem(
      value: Fruit.Diger,
      child: Text('Diğer'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('images/anasayfa.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenSize.width * 0.1,
                  screenSize.height * 0.23,
                  screenSize.width * 0.1,
                  0,
                ),
                child: TextFormField(
                  controller: _emailnameController,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenSize.width * 0.1,
                  screenSize.height * 0.3,
                  screenSize.width * 0.1,
                  0,
                ),
                child: TextFormField(
                  controller: _nameConroller,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Kullanıcı adı',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenSize.width * 0.1,
                  screenSize.height * 0.4771,
                  screenSize.width * 0.1,
                  0,
                ),
                child: TextFormField(
                  controller: _passwordController,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenSize.width * 0.1,
                  screenSize.height * 0.3771,
                  screenSize.width * 0.1,
                  0,
                ),
                child: TextFormField(
                  controller: _yasController,
                  decoration: InputDecoration(
                    labelText: 'Yaşınız',
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenSize.width * 0.15,
                  screenSize.height * 0.5271,
                  screenSize.width * 0.1,
                  0,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cinsiyet',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      DropdownButtonFormField<Fruit>(
                        value: _fruit,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.0,
                              color: Color(0xff707070),
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        items: genderList,
                        onChanged: (Fruit? value) {
                          setState(() {
                            _fruit = value;
                            _cinsiyetController.text = value.toString();
                          });
                        },
                        hint: const Text('Cinsiyet'),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  width: screenSize.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Checkbox1()) ,
                      );
                      if (_nameConroller.text.isEmpty ||
                          _emailnameController.text.isEmpty ||
                          _passwordController.text.isEmpty ||
                          _cinsiyetController.text.isEmpty ||
                          _yasController.text.isEmpty) {
                        // display an error message or do nothing
                      } else if (!_emailnameController.text.contains('@')) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Geçerli bir e-posta adresi girin'),
                          ),
                        );
                      } else {




                      }
                    },
                    child: const Text('Kayıt Devam Et'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xff1e99d6), backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        side: const BorderSide(
                          width: 1.0,
                          color: Color(0xff707070),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
