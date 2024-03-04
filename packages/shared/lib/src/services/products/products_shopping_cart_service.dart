import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:shared/shared.dart';

class ProductsShoppingCartService {
  initProductsShoppingCartHave() async {
    final applicatonDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(applicatonDocumentDir.path)
      ..registerAdapter(ProductShoppingCartDataModelAdapter());
    await Hive.openBox<ProductShoppingCartDataModel>('products_shopping_cart');
  }

  void addProduct(ProductShoppingCartDataModel product) {
    Hive.box<ProductShoppingCartDataModel>('products_shopping_cart').put(product.code, product);
  }

  List<ProductShoppingCartDataModel> listProduct() {
    final listProduct =
        Hive.box<ProductShoppingCartDataModel>('products_shopping_cart').values.toList();

    return listProduct;
  }

  void deleteProduct(int index) {
    Hive.box<ProductShoppingCartDataModel>('products_shopping_cart').deleteAt(index);
  }

  void putProduct(int index, ProductShoppingCartDataModel product) {
    Hive.box<ProductShoppingCartDataModel>('products_shopping_cart').putAt(index, product);
  }

  void deleteAllShoppingProducts() {
    Hive.box<ProductShoppingCartDataModel>('products_shopping_cart').clear();
  }
}
