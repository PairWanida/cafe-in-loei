import 'package:cafe_in_loei/main.dart';
import 'package:cafe_in_loei/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final message = _controller.text;
    // Handle sending message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Message sent: $message')),
    );
    _controller.clear();
  }

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                MaterialPageRoute(builder: (context) => MenuPage()),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/cafe_image.jpeg', // เปลี่ยนเป็นเส้นทางของภาพคาเฟ่ของคุณ
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            const Text('Email: cafein_loei@gmail.com'),
            const Text('Phone: +66 123 4567'),
            const Text('Address: 123 Cafe Street, Loei, Thailand'),
            const SizedBox(height: 20),
            const Text('Your Message:'),
            TextField(
              controller: _controller,
              maxLines: 4,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _sendMessage,
              child: const Text('Send Message'),
            ),
            const SizedBox(height: 20),
            const Text('Follow Us:'),
            Row(
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL(
                    'https://www.google.com/maps/place/123+Cafe+Street,+Loei,+Thailand');
              },
              child: const Text('เปิดแผนที่'),
            ),
          ],
        ),
      ),
    );
  }
}
