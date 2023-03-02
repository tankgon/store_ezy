import 'package:flutter/material.dart';


extension VioletColorSystem on Color {
  
  Color darkest() => withOpacity(1.4);

  Color dark() => withOpacity(1.2);

  Color normal() => withOpacity(1);

  Color light() => withOpacity(0.8);

  Color neutral() => withOpacity(0.5);

  Color lightest() => withOpacity(0.4);
  
}