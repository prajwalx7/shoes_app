import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/homepage');
          },
        ),
        centerTitle: true,
        title: Text(
          "Details",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                decoration: BoxDecoration(
                    color: const Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(52)),
                child: Image.asset(widget.product['imageUrl'] as String),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product['title'] as String,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${widget.product['price']}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.ios_share_rounded,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Align(
                      alignment: Alignment.topLeft, child: Text("Size")),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: (widget.product['sizes'] as List<int>).length,
                      itemBuilder: (context, index) {
                        final size =
                            (widget.product['sizes'] as List<int>)[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = size;
                              });
                            },
                            child: Chip(
                              label: Text(
                                size.toString(),
                                style: TextStyle(
                                    color: selectedSize == size
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              backgroundColor: selectedSize == size
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(color: Colors.black54),
                  Text(
                    widget.product['description'] as String,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                label: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  borderRadius: BorderRadius.circular(28)),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
