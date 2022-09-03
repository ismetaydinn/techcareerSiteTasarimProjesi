import 'package:flutter/material.dart';
import 'package:flutter_hepsiburada/renkler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        titleSpacing: 5,
        title: const Padding(
          padding: EdgeInsets.only(top: 3.0, ),
          child: Text("hepsiburada", style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 34, fontFamily: "Sarabun", fontWeight: FontWeight.bold),),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0, top: 10),
            child: Icon(Icons.notifications_none, color: Colors.black54, size: 26,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0, top: 10),
            child: Icon(Icons.bookmark_border, color: Colors.black54, size: 26,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0, top: 10),
            child: Icon(Icons.account_circle_outlined, color: Colors.black54, size: 26,),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7.5, left: 12.5),
            child: Row(
              children: [
                Container(
                  width: 225,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7.5)),
                    color: acikGri,
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(Icons.location_on_outlined, color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Konum", style: TextStyle(color: Colors.black54),),
                            Text("Lütfen konum seçin", style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: acikGri,
                    borderRadius: const BorderRadius.all(Radius.circular(7.5)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8, left: 17.5),
                        child: SizedBox(width: 110, height: 40,
                            child: Image.asset("resimler/pay.PNG")
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Container(
                  width: 390,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(7.5)),
                    border: Border.all(width: 1, color: Colors.black12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 7, left: 10, right: 10),
                            child: Icon(Icons.search, size: 30, color: Colors.black12,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7.0),
                            child: Text("Ürün, kategori veya marka ara", style: TextStyle(color: Colors.grey, fontSize: 16),),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Container(width: 45, height: 2.5, color: Colors.deepPurpleAccent,),
                          Container(width: 75, height: 2.5, color: Colors.lightBlueAccent,),
                          Container(width: 100, height: 2.5, color: Colors.deepOrange,),
                          Container(width: 60, height: 2.5, color: Colors.orangeAccent,),
                          Container(width: 40, height: 2.5, color: Colors.deepPurple,),
                          Container(width: 67, height: 2.5, color: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.asset("resimler/market.png"),
                    ),
                    const Text("Market", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: Image.asset("resimler/ucak.png")
                    ),
                    const Text("Uçak Bileti", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 75, height: 75,
                        child: Image.asset("resimler/cekilis.png")
                    ),
                    const Text("Kazandıran Çekiliş", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 75, height: 75,
                        child: Image.asset("resimler/su.png")
                    ),
                    const Text("Su", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.asset("resimler/annec.png"),
                    ),
                    const Text("Anne Çocuk", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 75,
                        height: 75,
                        child: Image.asset("resimler/okulo.png")
                    ),
                    const Text("Okul Alışverişi", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 75, height: 75,
                        child: Image.asset("resimler/tekn.png")
                    ),
                    const Text("Teknoloji Tutkunları", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 75, height: 75,
                        child: Image.asset("resimler/prem.png")
                    ),
                    const Text("Premium'a geç", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2,top: 2),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 185,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.orangeAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(7.5)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.diamond, color: Colors.orange, size: 25,),
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("SANA ÖZEL", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 15),),
                          Text("1 kupon fırsatı var", style: TextStyle(color: Colors.black54, fontSize: 12.5),)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  width: 185,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.orangeAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(7.5)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.percent, color: Colors.orange, size: 25,),
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("4x4 İNDİRİM", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 15),),
                          Text("8 kampanya var", style: TextStyle(color: Colors.black54, fontSize: 12.5),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: SizedBox(
                width: 400,
                height: 175,
                child: Image.asset("resimler/ortares.PNG")
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 8),
            child: Row(
              children: const [
                Text("Süper Fiyat, Süper Teklif", style: TextStyle(color: Colors.black, fontSize: 22),),
                Spacer(),
                Text("Tümü", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                Icon(Icons.keyboard_arrow_right, color: Colors.orange,),
              ],
            ),
          ),
          const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(width:30, height:30, child: Image.asset("resimler/anasayfam.png")),
                  const Text("Anasayfam", style: TextStyle(color: Colors.orange),),
                ],
              ),
              Column(
                children: [
                  SizedBox(width:30, height:30, child: Image.asset("resimler/kateg.png",)),
                  const Text("Kategorilerim", style: TextStyle(color: Colors.black38),),
                ],
              ),
              Column(
                children: [
                  SizedBox(width:30, height:30,child: Image.asset("resimler/sepet.png",)),
                  const Text("Sepetim", style: TextStyle(color: Colors.black38),),
                ],
              ),
              Column(
                children: [
                  SizedBox(width:30, height:30, child: Image.asset("resimler/fav.png",)),
                  const Text("Listelerim", style: TextStyle(color: Colors.black38),),
                ],
              ),
              Column(
                children: [
                  SizedBox(width:30, height:30, child: Image.asset("resimler/teslim.png",)),
                  const Text("Hızlı Teslimat", style: TextStyle(color: Colors.black38),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

