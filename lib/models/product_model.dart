import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isPopular,
      required this.isRecommended});

  @override
  List<Object?> get props => [name,category,imageUrl,price,isPopular,isRecommended];

  static List<Product> products = [
    Product(name: "Soft Drink 1", category: "Soft Drinks", imageUrl: 'https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', price: 2.5, isPopular: false, isRecommended: true),
    Product(name: "Soft Drink 1", category: "Soft Drinks", imageUrl: 'https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', price: 2.5, isPopular: false, isRecommended: true),
    Product(name: "Soft Drink 1", category: "Soft Drinks", imageUrl: 'https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', price: 2.5, isPopular: false, isRecommended: true),
  ];
}
