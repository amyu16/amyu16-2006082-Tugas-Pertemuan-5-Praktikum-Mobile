import 'package:flutter/material.dart';
import 'package:pertemuan5/models/news_detail.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.content});
  final String id;
  final String title;
  final String content;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Berita",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "./assets/images/newsimg.jpeg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  '5 Hadits tentang Keutamaan Puasa Ramadan, Salah Satunya Diganjar Surga',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Adapun, hadits yang menyatakan kewajiban tentang puasa Ramadan terdapat dalam sebuah riwayat yang berasal dari Thalhah bin Ubaidillah RA, seseorang datang kepada Nabi Muhammad dan bertanya,",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '"Ya Rasulullah, katakan padaku apa yang Allah wajibkan kepadaku tentang puasa?" Beliau menjawab, "Puasa Ramadan", "Apakah ada lagi selain itu?" Beliau menjawab, "Tidak, kecuali puasa sunnah," (HR Bukhari dan Muslim).',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Like: $likeCount'),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key,
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hot News!",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "./assets/images/hotnewsimg.jpeg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Kali Pertama Roket Pasokan AS untuk Ukraina Ditembak Jatuh Rusia',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Dilansir AFP, Rabu (29/3/2023), pengumuman itu disampaikan Kementerian Pertahanan Rusia usai Ukraina mengungkapkan telah menerima pasokan tank modern Leopard dan Challenger dari Jerman dan Inggris. Tank dan Challanger itu disebut akan digunakan untuk memukul mundur pasukan Moskow di timur dan selatan wilayahnya. "(Pasukan) Pertahanan udara menembak jatuh... sebuah roket berpemandu GLSDB," kata Kementerian Pertahanan Rusia dalam pernyataannya, merujuk pada bom diameter kecil yang diluncurkan dari daratan yang diproduksi Boeing dan Saab Group.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(' Like: $likeCount')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
