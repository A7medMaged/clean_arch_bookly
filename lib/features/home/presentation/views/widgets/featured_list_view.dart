import 'package:bookly_ca/features/home/presentation/views/widgets/Featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedListviewitem(),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
