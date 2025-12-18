import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'receipe_detail.dart';
import 'Model/receipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: const RecipeListPage(),
    );
  }
}

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        // ใช้จำนวนรายการจาก Model Recipe
        itemCount: Recipe.samples.length,
        itemBuilder: (context, index) {
          final recipe = Recipe.samples[index];

          // ใช้ GestureDetector เพื่อตรวจจับการแตะเพื่อเปลี่ยนหน้า
          return GestureDetector(
            onTap: () {
              // ใช้ Navigator เพื่อ push ไปยังหน้า RecipeDetail พร้อมส่งข้อมูล recipe
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(recipe: recipe),
                ),
              );
            },
            // ใช้ Card เพื่อความสวยงามและกำหนดค่า elevation
            child: Card(
              elevation: 2.0, // กำหนดเงาของการ์ดตามสไลด์
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // กำหนดมุมโค้ง 10.0
              ),
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(16.0), // กำหนด Padding รอบเนื้อหา
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // แสดงรูปภาพจาก assets
                    Image.asset(recipe.imageUrl),
                    // SizedBox สำหรับเว้นระยะห่างระหว่างรูปกับข้อความ
                    const SizedBox(height: 14.0),
                    // แสดงชื่อเมนูพร้อมปรับแต่งฟอนต์ด้วย Google Fonts
                    Text(
                      recipe.imgLabel,
                      style: GoogleFonts.kanit(
                        // เลือกใช้ฟอนต์ Kanit ตามตัวอย่าง
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700, // กำหนดความหนา w700
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
