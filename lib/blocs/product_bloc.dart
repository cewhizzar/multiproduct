import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product.dart';
import '../repositories/product_repository.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  ProductBloc({required this.productRepository}) : super(ProductInitialState());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is LoadProductsEvent) {
      yield ProductLoadingState();
      try {
        final products = await productRepository.getProducts();
        yield ProductLoadedState(products);
      } catch (e) {
        yield ProductErrorState('Error loading products');
      }
    }
  }
}
