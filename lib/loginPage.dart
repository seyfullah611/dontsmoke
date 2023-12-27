import 'package:flutter/material.dart';

import './anasayfa.dart';
import 'Kayit.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        backgroundColor: const Color(0xffafdafc),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/anasayfa.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 40.0),
                    TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween<double>(begin: 0, end: 1),
                      builder: (BuildContext context, double value, _) {
                        return Opacity(
                          opacity: value,
                          child: const Text(
                            'Kullanıcı Adınızı Giriniz:',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 18.0,
                              color: Color(0xfff6e386),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: 232.0,
                      height: 29.0,
                      child: TextField(
                        controller: _emailnameController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xa1ffffff),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Color(0xa1707070),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween<double>(begin: 0, end: 1),
                      builder: (BuildContext context, double value, _) {
                        return Opacity(
                          opacity: value,
                          child: const Text(
                            'Şifrenizi Giriniz:',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 18.0,
                              color: Color(0xfff6e386),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: 232.0,
                      height: 28.0,
                      decoration: BoxDecoration(
                        color: const Color(0xa1ffffff),
                        borderRadius: BorderRadius.circular(14.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0xa1707070)),
                      ),
                      child: TextField(
                        controller: _passwordController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Anasayfa()),
                        );
                        // E-posta ve şifre kontrolü yapmadan giriş yap


                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Giriş başarılı!'),
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Anasayfa()),
                          );

                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: const Color(0xFFADD8E6),
                        padding: const EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: Container(
                        width: 211.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0x69ffffff),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Center(
                          child: Text(
                            'GİRİŞ',
                            style: TextStyle(
                              color: Color(0xFF57b0ff),
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),


                    const SizedBox(height: 20.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Kayit()) as Route<Object?>,
                        );
                      },
                      child: const Text(
                        'Kayıt',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: Color(0xff0a4761),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
