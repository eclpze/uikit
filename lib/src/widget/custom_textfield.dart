import 'package:flutter/material.dart';
import 'package:package_uikit/src/color.dart';
import 'package:package_uikit/src/styles.dart';
import 'package:flutter_svg/svg.dart';

// Губайдуллина Камилла, 16.01.2026 12:53, текстовое поле для ввода данных в проекте

enum textFieldType { text, data, password }

class CustomTextField extends StatefulWidget {
  final textFieldType type; // Тип текстового поля
  final bool isTitle; // Наличие заголовка
  final String title; // Заголовок
  final TextEditingController controller; // Контроллер
  final Color color; // Цвет поля
  final Color colorCursor; // Цвет курсора
  final double borderRadius; // Закругление границ
  final Color border; // Цвет границ
  final Color enabledBorder; // Цвет границ
  final Color focusBorder; // Цвет границ
  final String hintText; // Текст-подсказка
  final String errorText; // Текст ошибки
  final double paddingTitle; // Отступы заголовка
  final double paddingTextField; // Отступы поля

  const CustomTextField({
    super.key,
    required this.isTitle,
    required this.title,
    required this.controller,
    required this.color,
    required this.border,
    required this.enabledBorder,
    required this.focusBorder,
    required this.hintText,
    required this.errorText,
    required this.paddingTitle,
    required this.paddingTextField,
    required this.borderRadius,
    required this.type,
    required this.colorCursor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText.isNotEmpty;

    return Column(
      children: [
        if (widget.isTitle)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.paddingTitle),
            child: Row(
              children: [
                Text(widget.title, style: captionRegular.copyWith(color: desc)),
                Spacer(),
              ],
            ),
          ),
        TextField(
          controller: widget.controller,
          obscureText: widget.type == textFieldType.password
              ? obscureText
              : false,
          cursorColor: widget.colorCursor,
          decoration: InputDecoration(
            suffixIcon: widget.type == textFieldType.password
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: obscureText
                        ? SvgPicture.asset('assets/close.svg')
                        : SvgPicture.asset('assets/eye.svg'),
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: textRegular.copyWith(color: caption),
            filled: true,
            fillColor: hasError ? error_textfield : widget.color,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(widget.borderRadius),
              ),
              borderSide: BorderSide(color: hasError ? error : widget.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(widget.borderRadius),
              ),
              borderSide: BorderSide(
                color: hasError ? error : widget.focusBorder,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(widget.borderRadius),
              ),
              borderSide: BorderSide(
                color: hasError ? error : widget.enabledBorder,
              ),
            ),
          ),
        ),
        if (hasError)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.paddingTextField),
            child: Row(
              children: [
                Text(
                  widget.errorText,
                  style: captionRegular.copyWith(color: error),
                ),
                Spacer(),
              ],
            ),
          ),
      ],
    );
  }
}
