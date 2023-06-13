import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget{
  final double size;
  final bool isFull;
  final bool isHorizontal;

  const SpacerComponent({
    super.key, 
    this.size = 16, 
    this.isFull = false, 
    this.isHorizontal = false});

  @override
  Widget build(BuildContext context){
    return isFull ? const Spacer() : SizedBox(height: size, width: isHorizontal ? size : null);
  }  
}