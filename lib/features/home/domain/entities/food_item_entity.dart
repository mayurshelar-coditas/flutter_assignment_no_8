class FoodItemEntity {
  final int id;
  final String name, image, rating;

  FoodItemEntity(
      {required this.id,
      required this.name,
      required this.image,
      required this.rating});

  //Bussiness rules related to product

  //1. To check if no other food item is identical to current object.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodItemEntity &&
        other.id == id &&
        other.name == name &&
        other.image == image;
  }

  //2. to check if the title or desciption or any other important field is empty
  bool isRatingEmpty() => rating.isEmpty;

  bool isNameEmpty() => name.isEmpty;

  bool isImageUrlEmpty() => image.isEmpty;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ rating.hashCode ^ image.hashCode;
}
