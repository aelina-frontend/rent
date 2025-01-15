class Category {
  final String category;
  final List<RentData> data;

  Category({required this.category, required this.data});
}

class RentData {
  final int id;
  final String title;
  final String address;
  final int price;
  final List<String> image;
  final double rating;
  final bool isLike;

  RentData(
      {required this.id,
      required this.title,
      required this.address,
      required this.price,
      required this.image,
      required this.rating,
      required this.isLike});
}


List<Category> categories = [
  Category(
      category: 'Купить',
      data: [
        RentData(id: 1, title: 'Элитка2-х комн квартира', address: '5 мкр 20 дом', price: 53000, image: ['assets/p11.jpg', 'assets/p12.jpg', 'assets/p7.jpg'], rating: 4.5, isLike: false),
        RentData(id: 1, title: '3-х комн квартира', address: '5 мкр 20 дом', price: 53000, image: ['assets/p8.jpg', 'assets/p9.jpg'], rating: 4.5, isLike: false),
  ]),
  Category(
      category: 'Арендовать',
      data: [
        RentData(id: 1, title: '2-х комнатная квартира', address: '5 мкр 20 дом', price: 40000, image: ['assets/p1.jpg', 'assets/p3.jpg'], rating: 4.5, isLike: false),
        RentData(id: 1, title: '1-х ком квартира', address: '5 мкр 20 дом', price: 20000, image: ['assets/p10.jpg', 'assets/7.jpg'], rating: 4.5, isLike: false),

      ]),
  Category(
      category: 'Новостройки',
      data: [
        RentData(id: 1, title: 'Имарат Строй', address: 'ул. советская 230', price: 800, image: ['assets/n1.jpg'], rating: 4.1, isLike: false),
        RentData(id: 1, title: 'Ихлас', address: 'ул. Токомбаева 188', price: 1000, image: ['assets/n2.jpg'], rating: 4.2, isLike: false),
      ]),
];