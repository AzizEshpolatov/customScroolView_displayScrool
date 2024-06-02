import '../models/category_model.dart';
import '../models/product_model.dart';

List<ProductModel> allProducts = [
  ProductModel(
    name: "Samsung Galaxy S21",
    price: 999,
    categoryId: 1,
    description: "The latest flagship phone from Samsung.",
    imagePath: "https://atlas-content-cdn.pixelsquid.com/stock-images/samsung-galaxy-s21-smartphone-040nNK3-600.jpg",
  ),
  ProductModel(
    name: "Samsung Galaxy S10",
    price: 299,
    categoryId: 1,
    description: "Stay connected and in style with Samsung's smartwatch.",
    imagePath: "https://i.pinimg.com/originals/4d/7f/96/4d7f96784614609bf7d0b3b2f3d5999f.png",
  ),
  ProductModel(
    name: "iPhone 13 Pro",
    price: 1099,
    categoryId: 2,
    description: "The most advanced iPhone ever.",
    imagePath: "https://i.pngimg.me/thumb/f/720/bd6826b2e6d742e39fa1.jpg",
  ),
  ProductModel(
    name: "iPhone 15 Pro",
    price: 249,
    categoryId: 2,
    description: "Immersive sound. Noise cancellation.",
    imagePath: "https://www.ourfriday.co.uk/image/cache/catalog/Apple/apple-iphone-15-pro-uk-nature-1-1-800x800.png",
  ),
  ProductModel(
    name: "Huawei P40 Pro",
    price: 899,
    categoryId: 3,
    description: "Revolutionary camera system.",
    imagePath: "https://www.giztop.com/media/catalog/product/cache/dc206057cdd42d7e34b9d36e347785ca/h/u/huawei_p40_pro-5_1.png",
  ),
  ProductModel(
    name: "Huawei P30 Pro",
    price: 199,
    categoryId: 3,
    description: "Elegant design. Long battery life.",
    imagePath: "https://atlas-content-cdn.pixelsquid.com/stock-images/huawei-p30-pro-aurora-smartphone-Xle2KJ0-600.jpg",
  ),
  ProductModel(
    name: "Nokia 8.3 5G",
    price: 499,
    categoryId: 4,
    description: "A global 5G smartphone.",
    imagePath: "https://images.ctfassets.net/wcfotm6rrl7u/5kA2onBmcmfCISVrEpAOgy/d412d00055878711c0419932065d779b/nokia-8_3_5G-polar_night-back-int.png?h=1000&fm=png&fl=png8",
  ),
  ProductModel(
    name: "Nokia Power Earbuds",
    price: 99,
    categoryId: 4,
    description: "True wireless earbuds with up to 150 hours of playtime.",
    imagePath: "https://images.ctfassets.net/wcfotm6rrl7u/12hVmTabVOfaZX2orFYnwn/7317299d96cf5c43dfbfe8491bbf7016/nokia-8_3_5G-polar_night-front_back-int.png?h=1000&fm=png&fl=png8",
  ),
  ProductModel(
    name: "Redmi Note 10 Pro",
    price: 279,
    categoryId: 5,
    description: "120Hz AMOLED display. 108MP quad camera.",
    imagePath: "https://www.giztop.com/media/catalog/product/cache/dc206057cdd42d7e34b9d36e347785ca/r/e/redmi_note_10_pro_black-1.jpg",
  ),
  ProductModel(
    name: "Redmi Note 12 Pro",
    price: 29,
    categoryId: 5,
    description: "True wireless earbuds with low latency gaming mode.",
    imagePath: "https://assets.asaxiy.uz/product/items/desktop/8fd7f981e10b41330b618129afcaab2d2023071015182214947Fpf1BiY3rd.png.webp",
  ),
];

List<CategoryModel> allCategories = [
  CategoryModel(id: 1, name: "Samsung"),
  CategoryModel(id: 2, name: "iPhone"),
  CategoryModel(id: 3, name: "Huawei"),
  CategoryModel(id: 4, name: "Nokia"),
  CategoryModel(id: 5, name: "Redmi"),
];
