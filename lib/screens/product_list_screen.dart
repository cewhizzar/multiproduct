import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiproduct/repositories/product_repository.dart';
import '../blocs/product_bloc.dart';
import '../blocs/product_event.dart';
import '../blocs/product_state.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: BlocProvider(
        create: (context) => ProductBloc(productRepository: ProductRepository())..add(LoadProductsEvent()),
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ProductLoadedState) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return ProductTile(product: state.products[index]);
                },
              );
            } else if (state is ProductErrorState) {
              return Center(child: Text(state.message));
            }
            return Center(child: Text('No products available'));
          },
        ),
      ),
    );
  }
}
