import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openWebView(String url) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: const Text('Web Görünümü')),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(url)),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              javaScriptEnabled: true,
            ),
          ),
        ),
      ),
    ));
  }

  get user => FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            GestureDetector(
              onTap: () => _openWebView(
                  'https://www.ntvspor.net/futbol/son-dakika-fenerbahce-tarihi-toplanti-kararini-kap-a-bildirdi-65f984aec9b05a005fed5bff'), // Bağlantılarınızı uygun URL'lerle değiştirin
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Fenerbahçe tarihi toplantı kararını KAP'a bildirdi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.network(
                          'https://media.fenerbahce.org/getmedia/38980612-b378-4e4a-8618-54bb9faf2502/baskanfoto2.jpg?width=1200&height=675&ext=.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _openWebView(
                  'https://www.transfermarkt.com.tr/spieler-statistik/marktwertaenderungen/marktwertetop'), // Bağlantılarınızı uygun URL'lerle değiştirin
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'Transfermark değerleri güncellendi!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/7/7b/Transfermarkt_logo.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _openWebView(
                  'https://www.fotomac.com.tr/besiktas/2024/03/19/besiktas-haberler-cenk-tosun-planini-degistirdi-transfer'), // Bağlantılarınızı uygun URL'lerle değiştirin
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'Cenk Tosun planını değiştirdi!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.network(
                          'https://iaftm.tmgrup.com.tr/a49fb2/0/0/0/0/0/0?u=https://iftm.tmgrup.com.tr/album/2024/03/18/besiktas-haberler-cenk-tosun-planini-degistirdi-transfer-1710791593561.jpg&mw=752&mh=700&l=1'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _openWebView(
                  'https://www.sondakika.com/yerel/haber-bursa-da-gencler-icin-bir-tesis-de-panayir-a-16953605/'), // Bağlantılarınızı uygun URL'lerle değiştirin
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Bursa'da Gençlere Yeni Futbol Tesisi Hizmete Açıldı",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.network(
                          'https://foto.sondakika.com/haber/2024/03/17/bursa-da-gencler-icin-bir-tesis-de-panayir-a-16953605_amp.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _openWebView(
                  'https://www.sondakika.com/guncel/haber-genclik-ve-spor-bakani-bolu-ataturk-stadyumu-nu-ye-16952009/'), // Bağlantılarınızı uygun URL'lerle değiştirin
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Gençlik ve Spor Bakanı Osman Aşkın Bak, Bolu Atatürk Stadyumu'nu yenileyeceklerini belirtti",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.network(
                          'https://foto.sondakika.com/haber/2024/03/16/genclik-ve-spor-bakani-osman-askin-bak-bolu-d-4-16952006_amp.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
