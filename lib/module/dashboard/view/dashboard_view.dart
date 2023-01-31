import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
          size: 24.0,
        ),
        title: const Text(
          "PetShop",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const search(),
              const SizedBox(
                height: 20.0,
              ),
              AnimalCategory(controller),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.orange[700],
                        ),
                        label: Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.orange[700],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 0.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CategoryProductView()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ProductCategories(
                controller: controller,
              ),
              const SizedBox(
                height: 30.0,
              ),
              ProductList(controller),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox ProductList(DashboardController controller) {
    return SizedBox(
      height: 250.0,
      child: ListView.builder(
          itemCount: controller.ListProducts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var item = controller.ListProducts[index];
            return Container(
              margin: EdgeInsets.only(right: 14.0, left: index == 0 ? 10.0 : 0),
              width: 175.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (index == 0)
                    Container(
                        child: Column(
                      children: [
                        const Text(
                          "All \nproducts",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            icon: Icon(
                              Icons.arrow_right_alt,
                              color: Colors.orange[700],
                            ),
                            label: Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.orange[700],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                elevation: 0.0),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailProductView()),
                        );
                      },
                      child: Container(
                        width: 175.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Column(children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: 175,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        item['images'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  top: 5,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 4.0),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[700],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "new",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  item['name'],
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.orange[700]),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item['label'],
                                      style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      item['price'],
                                      style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  SizedBox AnimalCategory(DashboardController controller) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        itemCount: controller.categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var data = controller.categoryList[index];
          var isSelectedIndex = controller.selectedIndex == index;
          return InkWell(
            onTap: () => controller.updateIndex(index),
            child: Container(
              width: 100.0,
              padding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
              margin:
                  EdgeInsets.only(right: 10.0, left: index == 0 ? 10.0 : 0.0),
              decoration: BoxDecoration(
                color: isSelectedIndex ? Colors.orange[700] : Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    data["category"],
                    color: isSelectedIndex ? Colors.white : Colors.orange[700],
                    size: 20.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    data["name"].toString(),
                    style: TextStyle(
                      color: isSelectedIndex ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}

class ProductCategories extends StatelessWidget {
  const ProductCategories({super.key, required this.controller});

  final DashboardController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        itemCount: controller.categoriesProducts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = controller.categoriesProducts[index];
          return Container(
            width: 175.0,
            margin: EdgeInsets.only(right: 14.0, left: index == 0 ? 10.0 : 0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            child: Column(children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item['images'],
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    item['name'],
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}

class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(40.0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "What are youu looking for?",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 24.0,
          ),
          const Icon(
            color: Colors.orange,
            Icons.format_list_bulleted,
            size: 24.0,
          ),
        ],
      ),
    );
  }
}
