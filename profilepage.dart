import 'package:e_commerce/models/myapp_state.dart';
import 'package:e_commerce/models/myappcubit.dart';
import 'package:e_commerce/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final String image = 'images/blank-profile-picture-973460_640.webp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MyappCubit, MyappState>(
        builder: (context, state) {
          if (state is ChangingImageState) {
            return Container(
              padding: EdgeInsets.only(left: 65),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      state.image,
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Text(
                    'my name is Thomas',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.only(left: 65),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      image,
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Text(
                    'my name is $username',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
