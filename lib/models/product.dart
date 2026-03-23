// 상품 객체
class Product {
  String? image;
  String? title;
  String? description;
  int? price;

  // 생성자
  Product(
    {
      // required : 객체 생성 시 필수로 전달 해야하는 값으로 지정
      required this.image,
      required this.title,
      this.description,
      this.price
    }
  );
}