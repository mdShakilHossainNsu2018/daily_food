import 'package:daily_food/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function onTaped) {
    return ListTile(
      onTap: onTaped,
      leading: Icon(
        icon,
        size: 20,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'Meals',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/food.jpeg'),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox.fromSize(size: Size(20, 20),),
          buildListTitle('Meal', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTitle('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          } )
        ],
      ),
    );
  }
}
