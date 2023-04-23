class Product {
  final int productId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String productName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Product(
      {required this.productId,
      required this.price,
      required this.category,
      required this.productName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Products data
  static List<Product> productList = [
    Product(
        productId: 0,
        price: 22,
        category: 'Face Care',
        productName: 'Foundation',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'images/product1.png',
        isFavorated: true,
        decription:
            'Foundation is used to blend or making your skin tone even. Sometimes, '
            'we find that our skin tone is not uniform in all areas of the face.',
        isSelected: false),
    Product(
        productId: 1,
        price: 11,
        category: 'Face Care',
        productName: 'Face powder',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'images/product2.png',
        isFavorated: false,
        decription:
            'Face powder stands to make your sweat-freedrier and sweat-free.'
            'It is also used to cover blemishes or spots on your face by creating a matte finish look.',
        isSelected: false),
    Product(
        productId: 2,
        price: 18,
        category: 'Eyes',
        productName: 'Eye shadow',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'images/product3.png',
        isFavorated: false,
        decription: 'Eyeshadow gives an extra dramatic feature to your eyes.'
            ' Also, it comes in different colors and finishes, as it can be applied in so many ways.',
        isSelected: false),
    Product(
        productId: 3,
        price: 30,
        category: 'Eyes',
        productName: 'Mascara',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'images/product4.png',
        isFavorated: false,
        decription:
            'Mascara is meant to darken, lengthen, and thicken your eyelashes. '
            'It makes your eye dramatic, enhances your features, and is more striking.',
        isSelected: false),
    Product(
        productId: 4,
        price: 24,
        category: 'Hair Products',
        productName: 'Hair gel',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'images/product5.png',
        isFavorated: true,
        decription:
            'Hair gel is a hairstyle product that is used to stiffen hair into a particular hairstyle. ',
        isSelected: false),
    Product(
        productId: 5,
        price: 24,
        category: 'Hair Products',
        productName: 'Hair wax',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'images/product6.png',
        isFavorated: false,
        decription: 'Hair wax is a thick hair styling product containing wax,'
            ' which helps hold hair in place. Unlike some products such as hair gel which leave the hair hard in texture, hair wax leaves the hair pliable.',
        isSelected: false),
    Product(
        productId: 6,
        price: 19,
        category: 'Womens',
        productName: 'Blush',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'images/product7.png',
        isFavorated: false,
        decription: 'Another must have makeup product,'
            ' blushes are essential for adding colour back to your face. After applying your base makeup products, your face can look flat and boring',
        isSelected: false),
    Product(
        productId: 7,
        price: 23,
        category: 'Eyes',
        productName: 'Eyeshadow Palette',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'images/product8.png',
        isFavorated: false,
        decription: 'We know what you are thinking – I am a makeup newbie,'
            ' I won’t be able to create stunning eye makeup looks with eyeshadow.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Product> getFavoritedProducts() {
    List<Product> _travelList = Product.productList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Product> addedToCartProducts() {
    List<Product> _selectedProducts = Product.productList;
    return _selectedProducts
        .where((element) => element.isSelected == true)
        .toList();
  }
}
