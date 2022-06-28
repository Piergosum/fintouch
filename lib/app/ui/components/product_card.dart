import 'package:flutter/material.dart';
import '../../app_colors.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({ Key? key, 
  required this.name, 
  required this.price,
  required this.quantity
  }) : super(key: key);

  final String name;
  final String price;
  final String quantity;

  @override
  Widget build(context) {
    return Card(
      color: AppColors.first,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10)
                    ),
                    color: AppColors.third,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: AppColors.second,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox()
                ),
                Text(
                  quantity,
                  style: TextStyle(
                    color: AppColors.third,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Divider(height: 2, color: AppColors.third,),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'menor preço',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'maior preço',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )                
        ],
      ),
    );
  }
}

