import 'package:flutter/material.dart';


extension VioletColorSystem on Color {
  
  Color darkest() => withOpacity(1);

  Color dark() => withOpacity(0.8);

  Color normal() => withOpacity(0.6);

  Color light() => withOpacity(0.4);

  Color neutral() => withOpacity(0.2);

  Color lightest() => withOpacity(0.1);
  
}