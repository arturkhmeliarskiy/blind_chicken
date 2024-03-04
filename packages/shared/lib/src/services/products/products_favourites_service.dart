import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:shared/src/services/products/product_favourite_model.dart';

class ProductsFavouritesService {
  initFavouritesProductsHave() async {
    final applicatonDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(applicatonDocumentDir.path)
      ..registerAdapter(ProductFavouriteModelAdapter());
    await Hive.openBox<ProductFavouriteModel>('favourites_products');
  }

  void addProduct(ProductFavouriteModel product) {
    Hive.box<ProductFavouriteModel>('favourites_products').put(product.id, product);
  }

  List<ProductFavouriteModel> listProduct() {
    final listProduct = Hive.box<ProductFavouriteModel>('favourites_products').values.toList();

    return listProduct;
  }

  void deleteProduct(int index) {
    Hive.box<ProductFavouriteModel>('favourites_products').delete(index);
  }

  void putProduct(int index, ProductFavouriteModel product) {
    Hive.box<ProductFavouriteModel>('favourites_products').put(index, product);
  }

  void deleteAllFavouritesProducts() {
    Hive.box<ProductFavouriteModel>('favourites_products').clear();
  }
}
