import 'package:flutter/material.dart';
import 'api_service.dart';

class MealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: ApiService().fetchMeals(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final meals = snapshot.data!;
            return ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(meals[index]['title']),
                );
              },
            );
          }
        },
      ),
    );
  }
}
