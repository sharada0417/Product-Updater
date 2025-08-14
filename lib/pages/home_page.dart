import 'package:app_routing/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Home page", style: TextStyle(fontSize: 20))),

          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(RouteNamesClass.products);
            },
            child: Text("Go to Products page"),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     GoRouter.of(context).go("/back");
          //   },
          //   child: Text("Go to Back page"),
          // ),
        ],
      ),
    );
  }
}
