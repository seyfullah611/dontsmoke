import 'package:dontsmokenot/seviye1.dart';
import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'package:dontsmokenot/anasayfa.dart';


class SigaraBrakmaYontemleri2_3 extends StatefulWidget {
  SigaraBrakmaYontemleri2_3({
    Key? key,
  }) : super(key: key);

  @override
  State<SigaraBrakmaYontemleri2_3> createState() => _SigaraBrakmaYontemleri2_3State();
}

class _SigaraBrakmaYontemleri2_3State extends State<SigaraBrakmaYontemleri2_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text("Sigara Bırakma Yöntemleri",
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  title: Text('\n\nKADEMELİ BIRAKMA\n'
                      '\n Kendinize bir sigara bırakma planı oluşturun. Bu planda sırasıyla kaç günde bir ne kadar'
                      'sigarayı azaltacağınız belirtin. Bunun için öncelikle yapmanız gereken bir bırakma tarihi'
                      'belirlemektir.'
                      'Sigara bırakma eylem planınıza sigarayı bırakmak için adım atmaya başlayacağınız bir'
                      'tarih belirleyerek başlayabilirsiniz. Önümüzdeki bir hafta içerisinde bir tarih belirleyerek'
                      'sigara bırakma serüveninize başlayabilirsiniz. Unutmayın hedefinize ulaşmak için adım'
                      'atmaya başlamanız gerekir.'
                      '\n Kaç gün arayla hangi oranda azaltarak ilerleyeceksiniz. Örneğin; Günde 10 sigara içiyorsanız g gün arayla 2’şer 2’şer azaltmayı tercih edebilirsiniz. Aşağıdaki sekmeye kendiniz için belirlediğiniz oranları yazınız. Unutmayın önümüzdeki haftadan itibaren sigarayı bırakmak için harekete geçmeyi planlıyorsanız bu oranlar ilerleme miktarınız için size yol gösterecek.'


                      '\n Sigara bırakma planınızdan ailenize, yakın arkadaşlarınıza ve iş yerinde birlikte vakit geçirdiğiniz arkadaşlarınıza bahsedin. Size nasıl yardımcı olabileceklerini onlarla konuşun. Örneğin, onlardan size sigara içmeyi teklif etmemelerini isteyebilirsiniz. Yanınızda sigara içmemelerini isteyebilirsiniz. Canınız sigara istediği zaman, içmemeniz için sizincesaretlendirmelerini isteyebilirsiniz.'
                      '\n Unutmayın bu süreç sabırlı ve inatçı olmanızı gerektiren bir süreç. Zaman zaman yoğun bir şekilde zorlanabilirsiniz. Zorlandığınız durumlarda  \nNefes ve gevşeme egzersizlerini deneyebilirsiniz (ulaşmak için butona tıklayabilirsiniz).'
      '\nYürüyüş yapabilirsiniz.'
    '\nEgzersiz veya spor yapabilirsiniz.'
    '\nYapmaktan keyif aldığınız bir aktiviteyle veya günlük işlerinizle uğraşabilirsiniz.'
    '\nHobilerinize vakit ayırabilirsiniz.'
    '\nSigara bırakmanız için size destek olabilecek bir yakınınızla size cesaretlendirmesi için'
    '\nkonuşabilirsiniz.'
                      '\n Size sigara içmeyi hatırlatan ürünleri ve eşyaları ev, iş yeriniz ve kendinizden uzaklaştırın. Örneğin kül tablalarınızı, kibritleri vb. uzaklaştırabilirsiniz. Sigara içerken bulunduğunuz ortamdan veya oturduğunuz yerden/mekandan uzak durunuz. Hatta koku aracılığıyla sigarayı aklınıza getirecek durumlardan kurtulun. Örneğin üzerine sigara kokusu sinmiş kıyafetlerinizi ve eş eşyalarınızı temizleyin, odanızı havalandırın, arabanızın içine sinmişse yıkatıp kokudan kurtulun. '
                      '\n\n\n\n 2. İLAÇ TEDAVİSİ\n\n\n'
                      '\n Sigarayı bırakma teknikleri olarak ezcanelerde satılan nikotin replasmanı (nikotin sakızı, pastiller, burun spreyleri vb.) veya ilaç tedavisine (nikotin içermeyen reçeteli ilaçlar) başvurabilirsiniz. Bunları denemek için doktorunuza başvurunuz. '


                      '\n\n\nFarmakolojik Tedavi'
                      '\na. Nikotin İçeren Farmakolojik Tedaviler: \n1. Nikotin Transdermal Bantı \n2. Nikotin Sakızı \n 3. Nikotin Pastili \n 4. Nikotin Nazal Spray (Burun deliklerine sıkılır) \n5. Nikotin Oral İnhaler (Ağızdan buhar çekilir) \n b. Nikotin içermeyen Farmakolojik Tedaviler: \n 1. Bupropion HCL (Norepinefrin ve dopaminin nöronal geri alınımının zayıf bir \ninhibitörü) \n  2. Vareniklin (α4 β2 reseptörleri uyararak nikotinik agonist etkileri ile nukleus akkumbensden dopamin salınımını sağlar)'
                     '\n13. 10 yıl sonra akciğer kanseri riski yarıya inerken kalp krizi riski hiç sigara içmemiş bir kişinin riskiyle aynı orana düşer.'),
                  subtitle: Text('https://www.solunum.org.tr/TusadData/Book/853/1412021102949-107202017932bolum14.pdf#page=110'),
                ),

                ListTile(
                  title: Text('\n\n\n\n\n\n\n3. BİRDEN BIRAKMA\n\n\n'
                      '\n “Sadece bir tane” sigara demeden birden bırakmayı deneyebilirsiniz. Yoğun sigara içme dürtüsüne karşı gelmek için yürüyüş yapmak, spor yapmak, fiziksel bir aktivite/uğraşla ilgilenmek gibi zihninizi ve bedeninizi meşgul edecek etkinliklere yönelebilirsiniz.'
                      '\n Hastanelerin ilgili birimlerinden veya bir ruh sağlığı çalışanından (psikiyatrist, psikolojik danışman veya psikolog) profesyonel destek alabilirsiniz.'
                      '\n Sigara bıraktırmaya yönelik yardım hatlarından destek alabilirsiniz.'
                      '\n\n4. Sigara içme rutinlerinizde değişiklik yapın (Rutinlerdeki değişimleri içeren kapsamlı bir liste en altta sunulmuştur)'
                      '\n Evin içinde sigara içmeyin'
                      '\n Sabah kalkar kalkmaz sigara içmeyin'

                      '\n Aç karnına sigara içmeyin'
                      '\n Uyumadan önce sigara içmeyin'
                      '\n Sigara içilen ortamlarda bulunmayın'
                      '\n Stres/Cildimin daha iyi görünmesi ve sigara kaynaklı lekelenmesini/kırışmasını önlemek'
'/üzüntü vb. duygular hissettiğinizde egzersiz, yürüyüş yapma, ortam değişikliği vb. etkinlikler yapın sigara içmeyin'''
                      '\n Stres/Cildimin daha iyi görünmesi ve sigara kaynaklı lekelenmesini/kırışmasını önlemek'
'/üzüntü vb. duygular hissettiğinizde gevşeme egzersizi veya nefes egzersizleri yapın (ulaşmak isterseniz botuna tıklayabilirsiniz)'
                      '\n Sigara içmek istediğinizde ağzınız bir şeyler çiğneyerek veya yiyerek meşgul edin (sakız, çerez, meyve, şeker, kraker vb.).'
                      '\n Zorlandığınızda destek olabilecek kişilere başvurun (arkadaşlarınız veya sigara destek hatları)'
                      '\n\n5. Sigara içme arzunuzu erteleyin. Örneğin sigara içme isteğiniz geldiğinde kendinize 10 dakika daha bekleyebileceğini hatırlat ve ısrarlı ol. Bu süre zarfında bedensel ve zihinsel olarak seni meşgule edecek aktiviteler yapabilirsin. Örneğin, bulunduğun ortamda kısa bir tur atmak,  ellerini yıkamak, sigara içilmeyen bir ortamda hava almaya çıkmak vb. '
                      '\n6. Sizi sigara içmeye neyin teşvik ettiğini bulun ve bunlardan uzaklaşın. Örneğin \n-Kahve veya çay içerken mi sigara içmek istiyorsunuz. Kahve/çayınızı sigara içmenin yasak olduğu yerlerde tüketin. \n-Öfkeli, kızgın veya stresli olduğunuzda mı sigara içiyorsunuz, sigara içmek yerine sizi rahatlatacak nefes egzersizleri yapın ya da kısa bir yürüyüşe çıkın'
                      ' \n6. Sigara içmemenin size ve etrafınıza olan yararlarını kendinize hatırlatın. \n Organlarınızın daha sağlıklı olması\n Psikolojik olarak daha sağlıklı olmak (unutmayın sigara bağımlılığı, bağımlılıktürlerindendir)\n Dişlerinizi sararmaktan ve çürüklerden korumak\n Nefesinizin ve giysilerinizin kötü kokmaması\n  Yüzünüzü kırışıklıklardan korumuş olmak\n Sigaraya harcadığınızın paranın cebinizde kalması\n İçtiğiniz sigaranın dumanıyla etrafınızdakilere zarar vermemiş olmak\n Sigara içmeyerek doğaya zarar vermemiş olmak\n Sigarayla mücadelenizde sizin daha güçlü ve kontrolü elinde bulunduran taraf olduğunuzuortaya koymak'


                      '\nNOT: Tiksindirerek Bıraktırma* yöntemlerine yer verilebilir mi?'
                      '\na. Doyurma (Satiation):'
                      '\nSigara tüketiminin arttırılması yolu ile sigaradan bıktırma söz konusudur.'
                      '\nb. Hızlı içme (Rapid smoking):'
                      '\nKişinin midesi bulanana kadar her 6 saniyede bir sigara içmesi söz konusudur. '
                      '\nCildin daha sağlıklı ve genç görünür.'

                  ),
                  subtitle: Text('*Schwartz, J. L. (1992). Methods of smoking cessation. Medical Clinics of North America, 76(2),451–476. doi:10.1016/s0025-7125(16)30362-5\nNikotin Replasman Tedavisi (SEMBOLLE ANLATIMA ÖRNEK): \n https://stopsmokinglondon.com/turkish/how-to-stop-smoking/nicotine-replacement '),
                ),

                ListTile(
                  //leading: Icon(Icons.email),
                  // title: Text('E-posta'),
                    title: Text('\n\n\n\n\n'
                        '\nSigara içme rutinlerindeki olası değişimlere ilişkin kapsamlı bir liste:'
    '\nSigara bırakma sürecinde bilişsel ve davranışsal müdahalelere örnekler:'
    '\n• Kayıt tutma,'
    '\n• Bırakma günü belirleme (özel bir gün olabilir),'
    '\n• Aile ve arkadaş desteği alma,'
    '\n• Sigarayı bırakmak isteme nedenlerinin listesini yapma,'
    '\n• Sigarayı bırakınca sağlayacağı yararların listesini yapma,'
    '\n• İçmeyi erteleme,'
    '\n• Marka değiştirme,'
    '\n• Sigara içen kişilerden ve sigara içilen yerlerden bir süre uzak durma,'
    '\n• Sigarayı sadece açık havada içme,'
    '\n• Kısa süreli gideceği yerlere yanına sigara almadan gitme,'
    '\n• İçtiği sigara bitmeden yenisini almama,'
    '\n• Sınırlı sayıda sigara taşıma,'
    '\n• Sigarayı yarıda söndürme,'
    '\n• Sigara içme davranışı ile aynı anda yürütülmesi olası olmayan etkinlikler önerilir:'
    '\n- Duş yapmak'
    '\n- Koşmak'
    '\n- Spor yapmak'
    '\n- Diş fırçalamak'
    '\n- Sakız çiğnemek'
    '\n• Elleri oyalayıcı uğraşlar (anahtarlık, stres topu, el işi)'
                    '\n• Bol sıvı alımı (su, meyve suları, bitki çayları)'
                    '\n• Bol fizik egzersiz önerilir.'
                    '\n• Sigarayı bıraktıktan sonra, haftalık, aylık sigara paralarını biriktirerek o parayla kendine ya da'
                    'sevdiklerine bir armağan alması, bir yemeğe, eğlenmeye giderek kendini ödüllendirmesi önerilir.'

                    ),
                    subtitle: Text('https://www.solunum.org.tr/TusadData/Book/853/1412021102949-107202017932bolum14.pdf#page=110\n\n\nNot: Bu yöntemler aynı zamanda kendini izleme (self-monitoring) programlarının içeriğinde yeralmaktadır. ')
                ),



              ],
            ),
          ),

          Container(
            height: 49.0,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.0,
                color: const Color(0xff707070),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 132.0,
                  height: 60.0,
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Anasayfa()) as Route<Object?>);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27.0),

                        ),

                      ),
                    ),
                    child: Icon(Icons.home),

                  ),

                ),
                //orta buton
                Container(
                  width: 128.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) =>Seviye1()) as Route<Object?>);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                    child: Icon(Icons.timeline),
                  ),
                ),
                Container(
                  width: 132.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                     // Navigator.of(context).push(MaterialPageRoute(builder: (_) => SigaraKullanim1_1()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(27.0),
                        ),
                      ),
                    ),
                    child: Icon(Icons.book),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Builder(
        builder: (context) => SidebarMenu(),
      ),
    );
  }
}