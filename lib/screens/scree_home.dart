import 'package:flutter/material.dart';
import 'package:list_dummy_text/screens/screen_category.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                  ),
                  // colorFilter: ColorFilters.greyscale,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CategoryScreen(),
                      ));
                    },
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                // Text(
                //   'Card With Splash',
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white,
                //     fontSize: 24,
                //   ),
                // ),
              ],
            ),
          );
        });
  }
}
