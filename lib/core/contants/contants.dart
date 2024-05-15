import 'package:assignment8/features/home/data/models/cart_product_model.dart';
import 'package:assignment8/features/home/data/models/category_container_model.dart';
import 'package:assignment8/features/home/data/models/product_model.dart';
import 'package:assignment8/features/home/data/models/wishlist_product_model.dart';

class Constants {
  static List<String> latestList = [
    '/Users/coditas/Documents/assignment8/assets/images/latest_image_one.png',
    '/Users/coditas/Documents/assignment8/assets/images/latest_image_two.png',
  ];

  static List<ProductModel> products = [
    const ProductModel(
      title: "Artsy",
      productImage:
          "/Users/coditas/Documents/assignment8/assets/images/product_one.png",
    ),
    const ProductModel(
      title: "Berkely",
      productImage:
          "/Users/coditas/Documents/assignment8/assets/images/product_two.png",
    ),
    const ProductModel(
      title: "Capucinus",
      productImage:
          "/Users/coditas/Documents/assignment8/assets/images/product_three.png",
    ),
    const ProductModel(
      title: "Monogram",
      productImage:
          "/Users/coditas/Documents/assignment8/assets/images/product_four.png",
    ),
  ];

  static List<CategoryContainerModel> categories = [
    const CategoryContainerModel(
      category: "Handle bags",
      categoryImage: "assets/images/category_one.png",
    ),
    const CategoryContainerModel(
      category: "Crossbody bags",
      categoryImage: "assets/images/category_two.png",
    ),
    const CategoryContainerModel(
      category: "Shoulder bags",
      categoryImage: "assets/images/category_three.png",
    ),
    const CategoryContainerModel(
      category: "Tote bag",
      categoryImage: "assets/images/category_four.png",
    ),
  ];

  static List<WishlistProductModel> wishlistProducts = [
    WishlistProductModel(
        image: 'assets/images/product_two.png',
        title: 'Berkely',
        description: "Wallet with chain ",
        styleAndModelNumber: "Style #36252 0YK0G 1000"),
    WishlistProductModel(
        image: 'assets/images/product_three.png',
        title: 'Capucinus',
        description: "Wallet with chain ",
        styleAndModelNumber: "Style #36252 0YK0G 1000"),
  ];

  // static List<ProductDescriptionModel> productDescription = [
  //   ProductDescriptionModel(image: 'assets/images/product_one.png', title: 'Artsy', price: '564',
  //   detail: 'Wallet with chain',
  //   modelAndStyle: 'Style #36252 0YK0G 1000',
  //   description: ''

  //   ),
  // ];
  static List<CartProductModel> cartlistProducts = [
    CartProductModel(
      image: 'assets/images/product_one.png',
      title: 'Artsy',
      description: "Wallet with chain ",
      styleAndModelNumber: "Style #36252 0YK0G 1000",
      price: '564',
    ),
    CartProductModel(
      image: 'assets/images/product_two.png',
      title: 'Monogram',
      description: "Wallet with chain ",
      styleAndModelNumber: "Style #36252 0YK0G 211",
      price: '1638',
    ),
    CartProductModel(
      image: 'assets/images/product_three.png',
      title: 'Monogram',
      description: "Wallet with chain ",
      styleAndModelNumber: "Style #36252 0YK0G 211",
      price: '1638',
    ),
    CartProductModel(
      image: 'assets/images/product_four.png',
      title: 'Monogram',
      description: "Wallet with chain ",
      styleAndModelNumber: "Style #36252 0YK0G 211",
      price: '1638',
    ),
  ];
}
