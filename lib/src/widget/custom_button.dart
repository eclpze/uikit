import 'package:flutter/material.dart';
import 'package:package_uikit/src/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_uikit/src/widget/custom_icon.dart';

// Губайдуллина Камилла, 16.01.2026 13:36, кнопки для ввода данных в проекте

enum ButtonType { primary, secondary, inactive, tetriary, cart, chips, login }

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed; // Действие при нажатии
  final ButtonType type; // Тип кнопки
  final Color? color; // Цвет кнопки
  final Color colorText; // Цвет текста
  final String text; // Текст кнопки
  final String? price; // Текст для типа cart
  final double borderRadius; // Закругление
  final double height; // Высота
  final double width; // Ширина
  final String? icon; // Путь к иконке
  final Color? selected; // Цвет выбранной кнопки
  final Color? notSelected; // Цвет невыбранной кнопки
  final bool isSelected; // Значение для chips
  final String? path1; // Путь к иконке1
  final String? path2; // Путь к иконке2

  const CustomButton({
    super.key,
    required this.type,
    required this.color,
    required this.text,
    this.price,
    required this.borderRadius,
    required this.height,
    required this.width,
    this.icon,
    required this.onPressed,
    required this.colorText,
    required this.selected,
    required this.notSelected,
    required this.isSelected, this.path1, this.path2,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.type == ButtonType.chips) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widget.width, widget.width),
          fixedSize: Size(widget.width, widget.width),
          backgroundColor: widget.isSelected
              ? widget.selected
              : widget.notSelected,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: GoogleFonts.roboto(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: widget.isSelected
                ? widget.colorText : bg,
          ),
        ),
      );
    }
    if (widget.type == ButtonType.cart) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widget.width, widget.width),
          fixedSize: Size(widget.width, widget.width),
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          children: [
            CustomIcon(
              onPressed: () {},
              path: widget.path1!,
              height: 20,
              width: 20,
              padding: 0,
            ),
            SizedBox(width: 16),
            Text(
              widget.text,
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: white,
              ),
            ),
            SizedBox(width: 140),
            Text(
              widget.price!,
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: white,
              ),
            ),
          ],
        ),
      );
    }
    if (widget.type == ButtonType.login) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widget.width, widget.width),
          fixedSize: Size(widget.width, widget.width),
          backgroundColor: widget.isSelected!
              ? widget.selected
              : widget.notSelected,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
            side: BorderSide(color: stroke),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          children: [
            Spacer(),
            CustomIcon(
              onPressed: () {},
              path: widget.path2!,
              height: 32,
              width: 32,
              padding: 0,
            ),
            SizedBox(width: 16),
            Text(
              widget.text,
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: widget.colorText,
              ),
            ),
            Spacer(),
          ],
        ),
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widget.width, widget.width),
          fixedSize: Size(widget.width, widget.width),
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
            side: widget.type == ButtonType.secondary
                ? BorderSide(color: accent)
                : BorderSide.none,
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: GoogleFonts.roboto(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: widget.colorText,
          ),
        ),
      );
    }
  }
}
