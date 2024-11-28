import 'package:flutter/material.dart';

import '../../common/widgets/banner_title.dart';
import '../../common/widgets/bottom_menu.dart';
import '../../common/widgets/category_view.dart';
import '../../common/widgets/product_view.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        title: Image.asset(
          'assets/images/logo_cty.png',
          width: 120,
          height: 60,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              shape: BoxShape.circle,
            ),

            // image profile
            child: GestureDetector(
              onTap: () {},
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/profile.png",
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search any Product...',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Montserrat",
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: Colors.grey),
                ],
              ),
            ),

            // "All Featured" and Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All Featured",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Montserrat",
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.sort, size: 16),
                      label: const Text(
                        "Sort",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt, size: 16),
                      label: const Text(
                        "Filter",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Categories
            const CategoryView(),

            // Deal of the Day Section
            BannerTitle(
              color: Colors.blue,
              title: "Deal of the Day",
              timer: "22h 55m 20s remaining",
              buttonText: "View all",
              icon: Icons.lock_clock,
              onViewAll: () {},
            ),
            const SizedBox(height: 15),

            // product
            const ProductView(),

            // Trending product
            const SizedBox(height: 16),
            BannerTitle(
              color: Colors.pink,
              title: "Trending product",
              timer: "Last day 28/11/2024",
              buttonText: "View all",
              icon: Icons.calendar_month,
              onViewAll: () {},
            ),
            const SizedBox(height: 15),
            const ProductView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onItemSelected: handleItemSelected,
      ),
    );
  }
}
