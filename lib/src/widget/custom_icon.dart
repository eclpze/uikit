import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Губайдуллина Камилла, 16.01.2026 13:29, текстовое поле для ввода данных в проекте
class CustomIcon extends StatelessWidget {
  final VoidCallback onPressed; // Действие при нажатии
  final String path; // Путь к иконке
  final double height; // Высота
  final double width; // Ширина
  final double padding; // Отступы

  const CustomIcon({
    super.key,
    required this.onPressed,
    required this.path,
    required this.height,
    required this.width,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(path, width: width, height: height),
      ),
    );
  }
}
