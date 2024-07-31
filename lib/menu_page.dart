import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'menu_data.dart'; // นำเข้าข้อมูลเมนู
import 'contact_page.dart';
import 'main.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cafe in Loei'),
          backgroundColor: const Color.fromARGB(255, 149, 215, 235),
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
                  MaterialPageRoute(builder: (context) => const MenuPage()),
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
          bottom: const TabBar(
            tabs: [
              Tab(text: 'เครื่องดื่ม'),
              Tab(text: 'เค้ก'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DrinkTab(drinks: drinks),
            CakeTab(cakes: cakes),
          ],
        ),
      ),
    );
  }
}

class DrinkTab extends StatelessWidget {
  final List<MenuItem> drinks;

  const DrinkTab({super.key, required this.drinks});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 48) / 4; // ลดขนาด padding และคอลัมน์

    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // จำนวนคอลัมน์
        crossAxisSpacing: 8.0, // ลดระยะห่าง
        mainAxisSpacing: 8.0, // ลดระยะห่าง
      ),
      itemCount: drinks.length,
      itemBuilder: (context, index) {
        final drink = drinks[index];
        return _buildMenuCard(
          imagePath: drink.image,
          title: drink.title,
          subtitle: drink.subtitle,
          price: drink.price,
          itemWidth: itemWidth,
        );
      },
    );
  }
}

class CakeTab extends StatelessWidget {
  final List<MenuItem> cakes;

  const CakeTab({super.key, required this.cakes});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 48) / 4; // ลดขนาด padding และคอลัมน์

    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // จำนวนคอลัมน์
        crossAxisSpacing: 8.0, // ลดระยะห่าง
        mainAxisSpacing: 8.0, // ลดระยะห่าง
      ),
      itemCount: cakes.length,
      itemBuilder: (context, index) {
        final cake = cakes[index];
        return _buildMenuCard(
          imagePath: cake.image,
          title: cake.title,
          subtitle: cake.subtitle,
          price: cake.price,
          itemWidth: itemWidth,
        );
      },
    );
  }
}

Widget _buildMenuCard({
  required String imagePath,
  required String title,
  required String subtitle,
  required String price,
  required double itemWidth,
}) {
  return Card(
    elevation: 2, // ลดความสูงของการยก
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6), // ลดความโค้งของมุม
    ),
    child: SizedBox(
      width: itemWidth,
      child: Column(
        children: [
          Image.asset(imagePath,
              width: itemWidth,
              height: itemWidth * 0.6,
              fit: BoxFit.cover), // ปรับความสูงให้เล็กลง
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
