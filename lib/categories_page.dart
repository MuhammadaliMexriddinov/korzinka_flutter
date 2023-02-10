import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korzinkaappgb/api.dart';
import 'package:korzinkaappgb/product_item.dart';

import 'items.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Product> list;
  var loading = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    setList();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void setList() async {
    list = (await Api().getItems()).cast<Product>();
    loading = false;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Корзинка"),
                  titleTextStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  centerTitle: true,
                  backgroundColor: Colors.white,
                ),
                body: loading
                    ? Center(child: const CircularProgressIndicator())
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          var item = list[index];
                          return gridItem(item.smallImageUrl, item.title,
                              item.prices.actualPrice, () => {});
                        },
                      ))));
  }
}
