import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:shared/src/services/products/product_favourite_model.dart';

class ProductsFavouritesService {
  initHave() async {
    final applicatonDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(applicatonDocumentDir.path)
      ..registerAdapter(ProductFavouriteModelAdapter());
    await Hive.openBox<ProductFavouriteModel>('product');
  }

  void addProduct(ProductFavouriteModel product) {
    Hive.box<ProductFavouriteModel>('product').put(product.id, product);
  }

  List<ProductFavouriteModel> listProduct() {
    final listProduct = Hive.box<ProductFavouriteModel>('product').values.toList();

    return listProduct;
  }

  void deleteProduct(int index) {
    Hive.box<ProductFavouriteModel>('product').delete(index);
  }

  void putProduct(int index, ProductFavouriteModel product) {
    Hive.box<ProductFavouriteModel>('product').put(index, product);
  }
}
