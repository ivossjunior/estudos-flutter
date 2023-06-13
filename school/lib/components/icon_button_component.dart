import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget{
  final double? size;
  final Function()? onPressed;
  final IconData icon;
  final Color? color;

  const IconButtonComponent({
    super.key, 
    this.size = 24, 
    this.onPressed, 
    this.icon = Icons.add, 
    this.color});

  @override
  Widget build(BuildContext context){
    return IconButton(onPressed: onPressed, icon: Icon(icon), iconSize: size, color: color,);
  }
}