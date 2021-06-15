import 'package:myapp/models/product.dart';

class ProductService {
  List<Product> getDummyDataProducts() {
    return <Product>[
      Product(
          name: "Product A",
          price: 100,
          star: 5,
          description:
              "INTO THE AM Men's Crew Neck T-Shirts - Premium Fitted Modern Basic Logo Tees 4.6 out of 5 stars 4,849"),
      Product(
          name: "Product B",
          price: 20.24,
          star: 4,
          description:
              "Mens My Favorite People Call Me Papa T Shirt Funny Humor Father Tee for Guys 4.8 out of 5 stars 3,651"),
      Product(
          name: "Product C",
          price: 80.7,
          star: 3,
          description:
              "Star Wars Yoda Lightsaber Best Dad Father's Day T-Shirt 4.9 out of 5 stars 38")
    ];
  }
}
