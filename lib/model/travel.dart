class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('place 1', 'place 1', 'assets/top1.jpg'),
      Travel('place 2', 'place 2', 'assets/top2.jpg'),
      Travel('place 3', 'place 3', 'assets/top3.jpg'),
      Travel('place 4', 'place 4', 'assets/top4.jpg'),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel('place 5', 'place 5', 'assets/bottom1.jpg'),
      Travel('place 6', 'place 6', 'assets/bottom2.jpg'),
      Travel('place 7', 'place 7', 'assets/bottom3.jpg'),
      Travel('place 8', 'place 8', 'assets/bottom4.jpg'),
    ];
  }
}
