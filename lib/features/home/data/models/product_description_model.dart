class ProductDescriptionModel {
  final String image,
      title,
      price,
      detail,
      modelAndStyle,
      descriptionOne,
      descriptionTwo,
      shippingInfo,
      paymentOptions;

  ProductDescriptionModel({required this.descriptionTwo, 
      required this.title,
      required this.price,
      required this.detail,
      required this.modelAndStyle,
      required this.descriptionOne,
      required this.shippingInfo,
      required this.paymentOptions,
      required this.image});
}
