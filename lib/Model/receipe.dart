class receipe {
  String imgLable;
  String imageUrl;

  receipe(this.imageUrl, this.imgLable);

  static List<receipe> samples = [
    receipe("assets/images/Pad Thai.webp", "Pad Thai"),
    receipe("assets/images/Larb muang.webp", "Larb muang"),
    receipe(
      "assets/images/Crying tiger beef salad.webp",
      "Crying tiger beef salad",
    ),
    receipe(
      "assets/images/Sweet Thai basil smash cocktail.webp",
      "Sweet Thai basil smash cocktail",
    ),
    receipe("assets/images/Thai red curry paste.webp", "Thai red curry paste"),
  ];
}
