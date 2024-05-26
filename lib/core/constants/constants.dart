import 'package:assignment8/features/cart/data/models/cart_item_model.dart';
import 'package:assignment8/features/home/data/models/food_item_model.dart';

class Constants {
  List<FoodItemModel> foodItems = [
    FoodItemModel(
      id: 1,
      name: "Veggie\ntomato mix",
      image: "assets/images/dish_one.png",
      rating: "N1,900",
    ),
    FoodItemModel(
      id: 2,
      name: "Spicy fish\nsauce",
      image: "assets/images/dish_five.png",
      rating: "N2,300.99",
    ),
    FoodItemModel(
      id: 3,
      name: "Egg and cucmber...",
      image: "assets/images/dish_two.png",
      rating: "N1,900",
    ),
    FoodItemModel(
      id: 4,
      name: "Fried chicken m.",
      image: "assets/images/dish_three.png",
      rating: "N1,900",
    ),
    FoodItemModel(
      id: 5,
      name: "Moi-moi and ekpa.",
      image: "assets/images/dish_four.png",
      rating: "N1,900",
    ),
  ];

  List<CartItemModel> cartItems = [
    CartItemModel(
      id: 1,
      name: "Veggie tomato mix",
      image: "assets/images/dish_one.png",
      rating: "#1,900",
    ),
    CartItemModel(
      id: 2,
      name: "Fishwith mix orange...",
      image: "assets/images/dish_five.png",
      rating: "#1,900",
    ),
    CartItemModel(
      id: 3,
      name: "Veggie tomato mix",
      image: "assets/images/dish_one.png",
      rating: "#1,900",
    ),
  ];
}
