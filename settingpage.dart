import 'package:e_commerce/models/myappcubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsApp extends StatelessWidget {
  const SettingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'images/icon-of-user-avatar-for-web-site-or-mobile-app-vector-3125199.jpg',
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<MyappCubit>(context).changImage();
              },
              child: Text(
                'change image',
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
