import 'dart:ui';

import 'package:flutter/material.dart';
import '../../app_colors.dart';
import '../../controllers/home_screen_controller.dart';
import '../components/product_card.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(context) {

    final HomeScreenController homeScreenController = HomeScreenController();

    return Scaffold(
      backgroundColor: AppColors.second,
        appBar: AppBar(
          backgroundColor: AppColors.second,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => homeScreenController.productListValueNotifier.changeQuantityValue(value),
                style: const TextStyle(color: Colors.white),
                autofocus: false,
                cursorHeight: 20,
                cursorColor: AppColors.third,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 5, right: 5),
                  labelText: 'Cu aqui',
                  labelStyle: TextStyle(
                    color: AppColors.third
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.third,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: ValueListenableBuilder(
                      valueListenable: homeScreenController.productListValueNotifier, 
                      builder: (context, value, child) {
                        return ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProductCard(
                              name: homeScreenController.productListValueNotifier.value[index].name, 
                              quantity: homeScreenController.productListValueNotifier.value[index].quantitity.toString(),
                              price: homeScreenController.productListValueNotifier.value[index].price.toString(),
                            );
                          }, 
                          separatorBuilder: (separatorBuilder, index) {
                            return const SizedBox(height: 20,);
                          }, 
                          itemCount: HomeScreenController.productList.length
                        );
                      }
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      
    
  }

}


