import 'package:flutter/material.dart';

final List<Map<String, dynamic>> dummyOrders = [
  {
    'id': 32053,
    'category': 'Breakfast',
    'title': 'Chicken Thai Biriyani',
    'price': 60,
    'imageUrl': 'https://images.unsplash.com/photo-1589302168068-964664d93dc0?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
  {
    'id': 32054,
    'category': 'Lunch',
    'title': 'Beef Burger with Fries',
    'price': 45,
    'imageUrl': 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
  {
    'id': 32055,
    'category': 'Dinner',
    'title': 'Creamy Pasta Carbonara',
    'price': 55,
    'imageUrl': 'https://images.unsplash.com/photo-1612874742237-6526221588e3?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
  {
    'id': 32056,
    'category': 'Dessert',
    'title': 'Berry Pancake Special',
    'price': 30,
    'imageUrl': 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
];

class Task2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: dummyOrders.length,
        itemBuilder: (context, index) {
          final dumor = dummyOrders[index];
          return Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    dumor['imageUrl'],
                    width: 150,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#${dumor['category']}',
                        style: TextStyle(color: Colors.orange, fontSize: 13),
                      ),
                      SizedBox(height: 4),
                      Text(
                        dumor['title'],
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'ID: ${dumor['id']}',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${dumor['price']}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),

                          SizedBox(
                            height: 32,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Colors.deepOrange,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
