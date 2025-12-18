import 'package:flutter/material.dart';
import 'Model/receipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<StatefulWidget> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.imgLabel),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // แสดงรูปภาพ
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            const SizedBox(height: 4),
            // ชื่อเมนู
            Text(
              widget.recipe.imgLabel,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // คำอธิบายเมนู (Description) ตามงานหน้า 13
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.recipe.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            // รายการส่วนผสมที่ปรับขนาดตาม Slider (Expanded + ListView)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // คำนวณปริมาณที่ปรับตามตัวคูณจาก Slider
                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.unit} ${ingredient.name}',
                    style: const TextStyle(fontSize: 16),
                  );
                },
              ),
            ),
            // Slider สำหรับปรับจำนวนคนทาน (Servings)
            Slider(
              min: 0,
              max: 10,
              divisions: 10,
              label: '$_sliderVal servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.toInt();
                });
              },
              activeColor: Colors.orange,
              inactiveColor: Colors.black12,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
