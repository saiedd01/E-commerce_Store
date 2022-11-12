class Product{
  String imgPath;
  double price;
  String name;

  Product(
      {
        required this.name , required this.imgPath, required this.price
      }
      );
}

final List<Product> Products = [
  Product(name: "Argentina Home 2022" ,price: 25, imgPath: "assets/img/Ag.png"),
  Product(name: "Netherlands Home 2022" ,price: 15, imgPath: "assets/img/G1.webp"),
  Product(name: "Qatar Home 2022" ,price: 12, imgPath: "assets/img/G1_1.png"),
  Product(name: "Poland Home 2022" ,price: 19, imgPath: "assets/img/G3_3.png"),
  Product(name: "Argentina Away 2022" ,price: 25, imgPath: "assets/img/G3_2.png"),
  Product(name: "Mexico Away 2022 " ,price: 12, imgPath: "assets/img/G3.png"),
  Product(name: "France Home 2022" ,price: 15, imgPath: "assets/img/G4.png"),
  Product(name: "Denmark Third Away 2022" ,price: 17, imgPath: "assets/img/G4_2.png"),
  Product(name: "Germany Home 2022" ,price: 12, imgPath: "assets/img/G5.png"),
  Product(name: "Spain Home 2022" ,price: 15, imgPath: "assets/img/G5_1.png"),
  Product(name: "Germany Away 2022" ,price: 15, imgPath: "assets/img/G5_2.png"),
  Product(name: "Belgium Home 2022 " ,price: 13, imgPath: "assets/img/G6_3.png"),
  Product(name: "Brazil Home  2022" ,price: 15, imgPath: "assets/img/G7.png"),
  Product(name: "Portugal Home 2022" ,price: 12, imgPath: "assets/img/G8.png"),

];
