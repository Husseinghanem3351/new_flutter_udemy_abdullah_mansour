import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   final List<Product> products;
//
//   HomeScreen({required this.products});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Shop App'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               // Navigate to the product detail screen with the selected product
//             },
//             child: Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CachedNetworkImage(
//                       imageUrl: products[index].imageUrl,
//                       placeholder: (context, url) => CircularProgressIndicator(),
//                       errorWidget: (context, url, error) => Icon(Icons.error),
//                       height: 150.0,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(height: 8.0),
//                     Text(
//                       products[index].name,
//                       style: TextStyle(fontSize: 18.0),
//                     ),
//                     SizedBox(height: 8.0),
//                     Text(
//                       '\$${products[index].price}',
//                       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 8.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add the product to the cart
//                       },
//                       child: Text('Add to Cart'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }