import 'package:baity/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      itemBuilder: (context, suggestion) {
        return const ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('product'),
          subtitle: Text('product name'),
        );
      },
      onSelected: (city) {
        // Navigator.of(context).push<void>(
        //   MaterialPageRoute(
        //     builder: (context) => CityPage(city: city),
        //   ),
        // );
      },
      suggestionsCallback: (search) {
        return [];
      },
      loadingBuilder: (context) => const Text('Loading...'),
      errorBuilder: (context, error) => const Text('Error!'),
      emptyBuilder: (context) => const Text('No items found!'),
      // decorationBuilder: (context, child) {
      //   return Material(
      //     type: MaterialType.card,
      //     elevation: 4,
      //     borderRadius: BorderRadius.circular(8),
      //     child: child,
      //   );
      // },
      // offset: Offset(0, 12),
      constraints: const BoxConstraints(maxHeight: 500),
      builder: (context, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                style: BorderStyle.solid,
                color: Colors.grey,
              ),
            ),
            labelText: 'ابحث عن عائلة',
            labelStyle: Theme.of(context).textTheme.headlineSmall,
            fillColor: FColors.lightGrey,
            filled: true,
            prefixIcon: Icon(Icons.search),
            
          ),
        );
      },
    );
  }
}