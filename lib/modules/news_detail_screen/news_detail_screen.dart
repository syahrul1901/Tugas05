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
            "https://bappeda.temanggungkab.go.id/uploads/artikel/sindoro-dan-sumbing--gunung-kembar-yang-menantang.jpg",
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
                  'SINDORO DAN SUMBING, GUNUNG KEMBAR YANG MENANTANG',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sindoro dan Sumbing merupakan dua Gunung yang letaknya berdekatan, serta memiliki bentuk dan tinggi yang hampir sama. Tinggi Gunung Sumbing sekitar 3.340 m dari permukaan laut (dpl), sedikit lebih tinggi daripada Sindoro (3.155 m dpl). Jika dipetakan, Sumbing berada disebelah barat daya kota Temanggung dan sebelah Timur kota Wonosobo. Sedangkan Sindoro disebelah barat laut Temanggung danTimur laut Wonosobo.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Masyarakat dikedua daerah itu menyebut Sindoro-Sumbing sebagai Gunung kembar. Keduanya menyimpan potensi wisata yang sangat besar, meskipun belum semuanya bisa dikelola secara maksimal.",
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
        leading: BackButton(color: Colors.white),
        title: const Text(
          "Hot News!",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://akcdn.detik.net.id/visual/2020/11/18/ilustrasi-puncak-gunung-es_169.jpeg?w=650",
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
                  'Es di Gunung JayaWijaya Punah 2025 ',
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
                  "Es di pegunungan tertinggi di Indonesia, Jawawijaya, diprediksi bakal punah pada 2025 oleh Badan Meteorologi, Klimatologi, dan Geofisika (BMKG). Penyusutan ini diungkap karena perubahan iklim.Titik tertinggi di Jayawijaya yang berada di Papua adalah Puncak Jaya (Piramida Cartensz), sekitar 4.884 meter di atas permukaan laut. Terdapat area salju di sana yang sebelumnya disebut sebagai salju abadi.",
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
