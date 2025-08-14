import 'package:app_routing/model/product_model.dart';
import 'package:app_routing/pages/home_page.dart';
import 'package:app_routing/pages/products_page.dart';
import 'package:app_routing/pages/single_product_page.dart';
import 'package:app_routing/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    errorBuilder: (context, state) {
      return Scaffold(body: Center(child: Text("this page is not found")));
    },
    routes: [
      //Home page
      GoRoute(
        name: RouteNamesClass.products,
        path: "/products",
        builder: (context, state) {
          return ProductsPage();
        },
      ),
      //Home page
      GoRoute(
        name: "Home page",
        path: "/",
        builder: (context, state) {
          return HomePage();
        },
      ),

      //single product page
      GoRoute(
        name: RouteNamesClass.singleProduct,
        path: "/product",
        builder: (context, state) {
          final Product product = state.extra as Product;
          return SingleProductPage(product: product);
        },
      ),
    ],
  );
}
