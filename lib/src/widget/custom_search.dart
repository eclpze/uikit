import 'package:flutter/material.dart';
import 'package:package_uikit/package_uikit.dart';
import 'package:package_uikit/src/widget/custom_icon.dart';

// Губайдуллина Камилла, 16.01.2026 13:10, текстовое поле для ввода данных в проекте
class CustomSearch extends StatefulWidget {
  final TextEditingController controller; // Контроллер
  final Color color; // Цвет поля
  final double borderRadius; // Закругление границ
  final Color border; // Цвет границ
  final String pathIcon1; // Путь к иконке1
  final String pathIcon2; // Путь к иконке2
  final Color enabledBorder; // Цвет границ
  final Color focusBorder; // Цвет границ
  final String hintText; // Текст-подсказка
  final double paddingTextField; // Отступы поля
  final Color colorCursor; // Цвет курсора

  const CustomSearch({
    super.key,
    required this.controller,
    required this.color,
    required this.borderRadius,
    required this.border,
    required this.enabledBorder,
    required this.focusBorder,
    required this.hintText,
    required this.paddingTextField,
    required this.colorCursor,
    required this.pathIcon1,
    required this.pathIcon2,
  });

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (widget.paddingTextField)),
      child: TextField(
        controller: widget.controller,
        onChanged: (value) {
          setState(() {
          });
        },
        cursorColor: widget.colorCursor,
        decoration: InputDecoration(
          fillColor: widget.color,
          filled: true,
          hintText: widget.hintText,
          hintStyle: headlineRegular.copyWith(color: caption),
          suffixIcon: widget.controller.text.isNotEmpty
              ? GestureDetector(
            onTap: () {
              widget.controller.clear();
            },
              child: Icon(MyFlutterApp.icon_close))
              : null,
          prefixIcon: Icon(MyFlutterApp.icon_check),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
            borderSide: BorderSide(color: widget.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
            borderSide: BorderSide(color: widget.focusBorder),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
            borderSide: BorderSide(color: widget.enabledBorder),
          ),
        ),
      ),
    );
  }
}
