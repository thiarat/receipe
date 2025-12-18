import 'ingredien.dart';

class Recipe {
  String imgLabel;
  String imageUrl;
  String description; // เพิ่มฟิลด์ตาม Slide หน้า 13
  List<Ingredient> ingredients; // เพิ่มรายการส่วนผสมตาม Slide สัปดาห์ที่ 4

  Recipe(this.imageUrl, this.imgLabel, this.description, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      "assets/images/Pad Thai.webp",
      "Pad Thai",
      "Traditional Thai stir-fried rice noodles with a perfect balance of sweet, sour, and salty flavors.",
      [
        Ingredient(name: 'Rice Noodles', quantity: 200, unit: 'g'),
        Ingredient(name: 'Shrimp', quantity: 5, unit: 'pcs'),
        Ingredient(name: 'Tofu', quantity: 1, unit: 'block'),
        Ingredient(name: 'Bean Sprouts', quantity: 1, unit: 'handful'),
      ],
    ),
    Recipe(
      "assets/images/Larb muang.webp",
      "Larb muang",
      "Northern Thai spicy minced meat salad with aromatic local herbs and spices.",
      [
        Ingredient(name: 'Minced Pork', quantity: 300, unit: 'g'),
        Ingredient(name: 'Larb Curry Paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Fresh Mint', quantity: 1, unit: 'handful'),
      ],
    ),
    Recipe(
      "assets/images/Crying tiger beef salad.webp",
      "Crying tiger beef salad",
      "Grilled steak with a spicy dipping sauce, a classic Thai favorite.",
      [
        Ingredient(name: 'Beef Sirloin', quantity: 500, unit: 'g'),
        Ingredient(name: 'Fish Sauce', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Dried Chili Powder', quantity: 1, unit: 'tbsp'),
      ],
    ),
  ];
}
