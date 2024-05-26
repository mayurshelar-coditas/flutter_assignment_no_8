import 'package:assignment8/features/home/domain/entities/food_item_entity.dart';

class FoodItemModel extends FoodItemEntity {
  FoodItemModel(
      {required super.id,
      required super.name,
      required super.image,
      required super.rating});


      //Usually we would have written fromJSON and toJson code here but for now we will keep the data static.
}
