class ProductModel {
  int id;
  String image;
  String title;
  String type;
  String sale;
  double price;
  double rating;

  ProductModel(this.rating,this.id,this.image,this.title,this.type,this.sale,this.price);
}
class Data {
  static List<ProductModel> generateProducts(){
    return [
      ProductModel(
        4.9,
        1,
        "assets/images/img_11.png",
        "Creter Impact",
        "Men's Shoes",
        "5.500 sold",
        99.56,
      ),
      ProductModel(
          5.0,
          2,
          "assets/images/img_12.png",
          "Air - Max Pre Day",
          "Men's Shoes",
          "4.200 sold",
          137.56
      ),
      ProductModel(
          3.9,
          3,
          "assets/images/img_13.png",
          "Air Max 51",
          "Men's Shoes",
          "2.521 sold",
          99.56
      ),
      ProductModel(
          4.0,
          4,
          "assets/images/img_14.png",
          "EM Shoes",
          "Men's Shoes",
          "5.500 sold",
          212.56
      ),
    ];
  }
}