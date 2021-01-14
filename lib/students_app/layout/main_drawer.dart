
import 'package:flutter/material.dart';


class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Sumit Ojha',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '3rd Year',
                    style: TextStyle(
                      //   fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            // leading: Icon(Icons.mind),
            leading: Icon(Icons.person),
            title: Text(
              'HealMymind',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Study Abroad Support',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Skill Development',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.wallpaper),
            title: Text(
              'Entrance Preparation',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              '24 X 7 Doubt Portal',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Student Personal Details',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
