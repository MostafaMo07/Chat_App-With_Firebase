import 'package:chat_app/helpers/app_constant.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primaryColor: AppConstants.hexToColor(AppConstants.APP_PRIMARY_COLOR),
        backgroundColor:
            AppConstants.hexToColor(AppConstants.APP_BACKGROUND_COLOR),
        primaryColorLight:
            AppConstants.hexToColor(AppConstants.APP_PRIMARY_COLOR_LIGHT),
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
        textTheme: TextTheme(caption: TextStyle(color: Colors.white)),
      ),
      home: ChatScreen(),
    ),
  );
}

_appDrawer() {
  return Drawer(
    child: Column(
      children: <Widget>[
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage('assets/images/user_placeholder.jpg'),
                backgroundColor: Colors.transparent,
              ),
              Text(
                'Mostafa Morsy',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Mostafamorsy466@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        Spacer(),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Attendants'),
          onTap: () {},
        ),
        Spacer(flex: 8),
      ],
    ),
  );
}
