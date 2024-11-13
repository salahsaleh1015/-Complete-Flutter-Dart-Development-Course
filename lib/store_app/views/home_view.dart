import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';
import 'package:complete_flutter_dart_development_course/store_app/services/get_all_product_services.dart';
import 'package:complete_flutter_dart_development_course/store_app/views/update_product_view.dart';
import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cartPlus),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("New Trend"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16,top: 100),
        child: FutureBuilder<List<ProductModel>>(
            future: GetAllProductServices().getAllProducts(),
            builder: (context,snapshot) {
              if(snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 100
                  ), itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,UpdateProductView.id);
                  },
                    child: CustomCard(
                    productModel: products[index],
                                    ),
                  ),);
              }else if(snapshot.hasError){
                return  Center(child: Text(snapshot.error.toString()),);

              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            })
      ),
    );
  }
}
