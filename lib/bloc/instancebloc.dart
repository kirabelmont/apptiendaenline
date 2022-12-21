import 'package:flutter_bloc/flutter_bloc.dart';

class ProductoEstado {
  List<int> carrito;
  ProductoEstado(this.carrito);
}

abstract class ProductoEvento {
  const ProductoEvento();
}

class AgregarProducto extends ProductoEvento {
  final int productoId;
  const AgregarProducto(this.productoId);
}

class QuitarProducto extends ProductoEvento {
  final int productoId;
  const QuitarProducto(this.productoId);
}

class ProductoEstadoBloc extends Bloc<ProductoEvento, ProductoEstado> {
  ProductoEstadoBloc(ProductoEstado initialState) : super(initialState) {
    on<AgregarProducto>((event, emit) {
      state.carrito.add(event.productoId);
      emit(ProductoEstado(state.carrito));
    });
    on<QuitarProducto>((event, emit) {
      state.carrito.remove(event.productoId);
    });
  }
}
