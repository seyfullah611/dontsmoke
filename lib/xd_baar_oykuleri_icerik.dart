import 'package:flutter/material.dart';


class XDBaarOykuleriIcerik extends StatelessWidget {
  XDBaarOykuleriIcerik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xfffcfcfc),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(28.0),
              ),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Container(
            width: 65.0,
            height: 65.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            width: 49.0,
            height: 40.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            width: 132.0,
            height: 71.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
              ),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              width: 132.0,
              height: 71.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(27.0),
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Container(
            width: 83.0,
            height: 47.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          Positioned(
            width: 146.0,
            height: 40.0,
            top: 28.0,
            child: Text(
              'Başarı Öyküleri',
              style: TextStyle(
                fontFamily: 'Agency FB',
                fontSize: 30,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Container(
            width: 22.0,
            height: 251.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(9.0),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Positioned(
            width: 170.0,
            height: 34.0,
            top: 123.0,
            child: Text(
              'Bu benim hikayem',
              style: TextStyle(
                fontFamily: 'Agency FB',
                fontSize: 30,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Positioned(
            width: 284.0,
            height: 34.0,
            top: 258.4,
            child: Text(
              '(Tıklama ile büyüyen resimler)',
              style: TextStyle(
                fontFamily: 'Agency FB',
                fontSize: 30,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Positioned(
            width: 160.0,
            height: 312.0,
            top: 446.1,
            child: Text(
              'Bu sekmede sigarayı bırakanların \nbırakma süreçlerine ilişkin öykülerine \n(nasıl bıraktılar, zorlandıklarınla bununla \nnasıl başa çıktılar, bıraktıktan sonra \nhayatlarında ne tür değişiklikler oldu ve \nkendilerini nasıl hissettiler vb.) yer \nverilecektir.\nBAŞARI ÖYKÜLERİ',
              style: TextStyle(
                fontFamily: 'Agency FB',
                fontSize: 31,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
