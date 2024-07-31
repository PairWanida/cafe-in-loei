import 'package:cafe_in_loei/menu_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe in Loei',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double aboutUsWidth =
        MediaQuery.of(context).size.width * 0.5; // 50% ของความกว้างหน้าจอ
    final double promoWidth =
        MediaQuery.of(context).size.width * 0.4; // 40% ของความกว้างหน้าจอ

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cafe in Loei'),
        backgroundColor:
            const Color.fromARGB(255, 149, 215, 235), // สีพื้นหลังของ AppBar
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: const Text(
              'หน้าแรก',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 5),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuPage(),
                ),
              );
            },
            child: const Text(
              'เมนู',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 5),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            },
            child: const Text(
              'ติดต่อเรา',
              style: TextStyle(color: Colors.black),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print('Search button pressed');
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              if (kDebugMode) {
                print('Notifications button pressed');
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/cafe.jpg'), // ตรวจสอบว่าไฟล์ภาพมีอยู่
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: aboutUsWidth,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'เกี่ยวกับเรา',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Cafe In Loei เป็นสถานที่ที่สมบูรณ์แบบสำหรับการผ่อนคลายและเพลิดเพลินกับกาแฟถ้วยโปรด คาเฟ่ของเราตั้งอยู่ในใจกลางเมืองเลย มีบรรยากาศที่อบอุ่น บริการที่เป็นมิตร และเครื่องดื่มกับของว่างที่ปรุงอย่างพิถีพิถัน ไม่ว่าคุณจะมองหาที่พักผ่อน พบปะกับเพื่อนฝูงหรือต้องการทำงาน Cafe In Loei ยินดีต้อนรับคุณด้วยอ้อมแขนที่อบอุ่นและกลิ่นหอมอร่อยของเรา',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        width: promoWidth,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'โปรโมชั่นพิเศษ',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '*รับส่วนลด 5% สำหรับเครื่องดื่มทุกชนิดทุกวันอังคาร\n*สั่งเครื่องดื่ม 3 แก้ว รับฟรี! เค้กส้ม 1 ชิ้น\n*เช็คอินลดเพิ่มอีก 5%!',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'เครื่องดื่มแนะนำ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Image.asset('assets/cheese_thai_tea.jpg',
                                    width: 250,
                                    height: 250), // ตรวจสอบว่าไฟล์ภาพมีอยู่
                                const SizedBox(height: 10),
                                const ListTile(
                                  title: Text(
                                    'Cheese Thai',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  subtitle: Text('฿65',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Image.asset('assets/iced_caramel_macchiato.jpg',
                                    width: 250,
                                    height: 250), // ตรวจสอบว่าไฟล์ภาพมีอยู่
                                const SizedBox(height: 10),
                                const ListTile(
                                  title: Text(
                                    'Iced Caramel Macchiato',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  subtitle: Text('฿60',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Image.asset('assets/yuzu_coffee.jpg',
                                    width: 250,
                                    height: 250), // ตรวจสอบว่าไฟล์ภาพมีอยู่
                                const SizedBox(height: 10),
                                const ListTile(
                                  title: Text(
                                    'Yuzu Coffee',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  subtitle: Text('฿65',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Add more featured drinks here
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {
                  _launchURL('https://twitter.com/cafeinloei');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {
                  _launchURL('https://facebook.com/cafeinloei');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  _launchURL('https://instagram.com/cafeinloei');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
