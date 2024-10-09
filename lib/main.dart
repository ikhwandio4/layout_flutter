import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        '"Gunung Butak: Menyentuh Langit di Atas Kota Batu"'
        'Mendaki Gunung Butak bukan hanya tentang mencapai puncak, tetapi juga perjalanan menemukan ketenangan di tengah alam yang megah. Setiap langkah di jalur ini adalah tarian harmoni antara tubuh dan alam, disambut oleh sejuknya udara pegunungan dan kicauan burung di kejauhan. '
        'Saat mencapai puncak, perasaan damai meresap ke dalam hati, seolah seluruh dunia berada di bawah telapak kaki. Pemandangan Kota Batu dan Malang yang memukau membentang luas, menambah kesan tersendiri yang tak terlupakan. Gunung Butak mengajarkan bahwa keindahan bukan hanya di tujuan, tetapi di setiap tantangan yang kita lewati.'
        'Nama: Ikhwandi'
        'NIM: 2241720028',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama:Ikhwandi Nim:2241720028',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/images/01.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
