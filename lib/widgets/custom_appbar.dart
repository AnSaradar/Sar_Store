import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0, //To Remove the Shadow
      title: Center(
        child: Container(
          color: Colors.black,
          child: Text(title,style: TextStyle(color: Colors.white,fontSize: 24,fontFamily: 'Avenir',fontWeight: FontWeight.bold),),
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [IconButton(icon: Icon(Icons.favorite),onPressed: (){
        Navigator.pushNamed(context, '/wishlist');
      },)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);

}
