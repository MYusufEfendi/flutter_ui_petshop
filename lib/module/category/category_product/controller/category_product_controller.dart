import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/category_product_view.dart';

class CategoryProductController extends State<CategoryProductView>
    implements MvcController {
  static late CategoryProductController instance;
  late CategoryProductView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List ListProducts = [
    {
      "images":
          "https://images.unsplash.com/photo-1587559070757-f72a388edbba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Dog Toys",
      "label": "sundays",
      "price": "\$16"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80",
      "name": "Cat Food",
      "label": "wiskas",
      "price": "\$20"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Cat House",
      "label": "melon",
      "price": "\$36"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1563497425252-36b755215241?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80",
      "name": "Dog Dress",
      "label": "unhoy",
      "price": "\$9"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1587559070757-f72a388edbba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Dog Toys",
      "label": "sundays",
      "price": "\$16"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80",
      "name": "Cat Food",
      "label": "wiskas",
      "price": "\$20"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Cat House",
      "label": "melon",
      "price": "\$36"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1563497425252-36b755215241?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80",
      "name": "Dog Dress",
      "label": "unhoy",
      "price": "\$9"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1587559070757-f72a388edbba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Dog Toys",
      "label": "sundays",
      "price": "\$16"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80",
      "name": "Cat Food",
      "label": "wiskas",
      "price": "\$20"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Cat House",
      "label": "melon",
      "price": "\$36"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1563497425252-36b755215241?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80",
      "name": "Dog Dress",
      "label": "unhoy",
      "price": "\$9"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1587559070757-f72a388edbba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Dog Toys",
      "label": "sundays",
      "price": "\$16"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80",
      "name": "Cat Food",
      "label": "wiskas",
      "price": "\$20"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      "name": "Cat House",
      "label": "melon",
      "price": "\$36"
    },
    {
      "images":
          "https://images.unsplash.com/photo-1563497425252-36b755215241?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80",
      "name": "Dog Dress",
      "label": "unhoy",
      "price": "\$9"
    },
  ];
}
