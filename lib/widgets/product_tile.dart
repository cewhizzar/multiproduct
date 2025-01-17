import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product.dart';
import '../blocs/product_bloc.dart';
import '../blocs/product_event.dart';
import '../blocs/product_state.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text('\$${product.price.toString()}'),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          context.read<ProductBloc>().add(DeleteProductEvent(product.id));
        },
      ),
    );
  }
}
