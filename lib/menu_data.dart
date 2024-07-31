import 'package:flutter/material.dart';

class MenuItem {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  MenuItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

//ข้อมูลเครื่องดื่ม
final List<MenuItem> drinks = [
  MenuItem(
    image: 'assets/espresso.jpg',
    title: 'Espresso',
    subtitle: 'เอสเพรสโซ',
    price: '฿50',
  ),
  MenuItem(
    image: 'assets/americano.jpg',
    title: 'Americano',
    subtitle: 'อเมริกาโน',
    price: '฿50',
  ),
  MenuItem(
      image: 'assets/iced_americano.jpg',
      title: 'Iced Americano',
      subtitle: 'อเมริกาโนเย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/latte.jpg',
      title: 'Latte',
      subtitle: 'ลาเต้ร้อน',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_latte.jpg',
      title: 'Iced Latte',
      subtitle: 'ลาเต้เย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/cappuccino.jpg',
      title: 'Cappuccino',
      subtitle: 'คาปูชิโนร้อน',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_cappuccino.jpg',
      title: 'Iced Cappuccino',
      subtitle: 'คาปูชิโนเย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/mocha.jpg',
      title: 'Mocha',
      subtitle: 'มอคค่าร้อน',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_mocha.jpg',
      title: 'Iced Mocha',
      subtitle: 'มอคค่าเย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/caramel_macchiato.jpg',
      title: 'Caramel Macchiato',
      subtitle: 'คาราเมลแมคคิอาโต้ร้อน',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_caramel_macchiato.jpg',
      title: 'Iced Caramel Macchiato',
      subtitle: 'คาราเมลแมคคิอาโต้เย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/yuzu_coffee.jpg',
      title: 'Yuzu Coffee',
      subtitle: 'ยุซุคอฟฟี่',
      price: '฿65'),
  MenuItem(
      image: 'assets/iced_thai_tea.jpg',
      title: 'Thai Tea',
      subtitle: 'ชาไทย',
      price: '฿60'),
  MenuItem(
      image: 'assets/iced_lemon_tea.jpg',
      title: 'Lemon Tea',
      subtitle: 'ชามะนาว',
      price: '฿60'),
  MenuItem(
      image: 'assets/iced_green_tea.jpg',
      title: 'Green Tea',
      subtitle: 'ชาเขียว',
      price: '฿60'),
  MenuItem(
      image: 'assets/cheese_thai_tea.jpg',
      title: 'Cheese Thai Tea',
      subtitle: 'ชาไทยชีส',
      price: '฿65'),
  MenuItem(
      image: 'assets/fresh_milk.jpg',
      title: 'Fresh Milk',
      subtitle: 'นมสดร้อน',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_fresh_milk.jpg',
      title: 'Iced Fresh Milk',
      subtitle: 'นมสดเย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/iced_strawberry_milk.jpg',
      title: 'Iced Strawberry Milk',
      subtitle: 'นมสตรอเบอร์รีเย็น',
      price: '฿65'),
  MenuItem(
      image: 'assets/chocolate_milk.jpg',
      title: 'Chocolate Milk',
      subtitle: 'นมช็อกโกแลตร้อน',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_chocolate_milk.jpg',
      title: 'Iced Chocolate Milk',
      subtitle: 'นมช็อกโกแลตเย็น',
      price: '฿60'),
  MenuItem(
      image: 'assets/caramel_milk.jpg',
      title: 'Caramel Milk',
      subtitle: 'นมคาราเมล',
      price: '฿50'),
  MenuItem(
      image: 'assets/iced_caramel_milk.jpg',
      title: 'Iced Caramel Milk',
      subtitle: 'นมคาราเมลเย็น',
      price: '฿65'),
];

//ข้อมูลเค้ก
final List<MenuItem> cakes = [
  MenuItem(
    image: 'assets/cheesecake.jpg',
    title: 'Cheesecake',
    subtitle: 'ชีสเค้ก',
    price: '฿75',
  ),
  MenuItem(
    image: 'assets/red_velvet_cake.jpg',
    title: 'Red Velvet Cake',
    subtitle: 'เรดเวลเวทเค้ก',
    price: '฿75',
  ),
  MenuItem(
      image: 'assets/chocolate_cake.jpg',
      title: 'Chocolate Cake',
      subtitle: 'ช็อกโกแลตเค้ก',
      price: '฿75'),
  MenuItem(
      image: 'assets/croissant.jpg',
      title: 'Croissant',
      subtitle: 'ครัวซองต์',
      price: '฿80'),
  MenuItem(
      image: 'assets/almond_croissant.jpg',
      title: 'Almond Croissant',
      subtitle: 'ครัวซองต์อัลมอนด์',
      price: '฿80'),
  MenuItem(
      image: 'assets/chocolate_chip_cookies.jpg',
      title: 'Chocolate Chip Cookies',
      subtitle: 'คุกกี้ช็อกโกแลตชิพ',
      price: '฿75'),
  MenuItem(
      image: 'assets/macarons.jpg',
      title: 'Macarons',
      subtitle: 'มาการอง',
      price: '฿75'),
  MenuItem(
      image: 'assets/apple_pie.jpg',
      title: 'Apple Pie',
      subtitle: 'แอปเปิ้ลพาย',
      price: '฿80'),
  MenuItem(
      image: 'assets/blueberry_pie.jpg',
      title: 'Blueberry Pie',
      subtitle: 'บลูเบอร์รี่พาย',
      price: '฿80'),
  MenuItem(
      image: 'assets/banoffee_pie.jpg',
      title: 'Banoffee Pie',
      subtitle: 'บานอฟฟี่พาย',
      price: '฿80'),
  MenuItem(
      image: 'assets/blueberry_muffin.jpg',
      title: 'Blueberry Muffin',
      subtitle: 'บลูเบอร์รี่มัฟฟิน',
      price: '฿60'),
  MenuItem(
      image: 'assets/chocolate_chip_muffin.jpg',
      title: 'Chocolate Chip Muffin',
      subtitle: 'ช็อกโกแลตชิพมัฟฟิน',
      price: '฿60'),
  MenuItem(
      image: 'assets/chocolate_brownies.jpg',
      title: 'Chocolate Brownies',
      subtitle: 'ช็อกโกแลตบราวนี่',
      price: '฿60'),
  MenuItem(
      image: 'assets/lemon_tart.jpg',
      title: 'Lemon Tart',
      subtitle: 'ทาร์ตเลมอน',
      price: '฿60'),
  MenuItem(
      image: 'assets/orange_cake.jpg',
      title: 'Orange Cake',
      subtitle: 'เค้กส้ม',
      price: '฿75'),
  MenuItem(
      image: 'assets/chocolate_mousse.jpg',
      title: 'Chocolate Mousse',
      subtitle: 'มูสช็อกโกแลต',
      price: '฿80'),
  MenuItem(
      image: 'assets/blueberry_pancakes.jpg',
      title: 'Blueberry Pancakes',
      subtitle: 'แพนเค้ก บลูเบอร์รี่',
      price: '฿80'),
  MenuItem(
      image: 'assets/strawberry_roll_cake.jpg',
      title: 'Strawberry Roll Cake',
      subtitle: 'โรลเค้กสตรอว์เบอร์รี่',
      price: '฿80'),
  MenuItem(
      image: 'assets/chocolate_eclair.jpg',
      title: 'Chocolate Eclairs',
      subtitle: 'อีแคลร์ช็อกโกแลต',
      price: '฿75'),
  MenuItem(
      image: 'assets/matcha_green_tea_cake.jpg',
      title: 'Matcha Green Tea Cake',
      subtitle: 'เค้กชาเขียวมัทฉะ',
      price: '฿75'),
  MenuItem(
      image: 'assets/lemon_cupcake.jpg',
      title: 'Lemon Cupcake',
      subtitle: 'คัพเค้กเลม่อน',
      price: '฿60'),
  MenuItem(
      image: 'assets/chocolate_eclair.jpg',
      title: 'Tiramisu cake',
      subtitle: 'เค้กทีรามิสุ',
      price: '฿75'),
  MenuItem(
      image: 'assets/pudding.jpg',
      title: 'Pudding',
      subtitle: 'พุดดิ้ง',
      price: '฿60'),
];
