import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:package_uikit/src/styles.dart';
import 'package:package_uikit/src/color.dart';

// Губайдуллина Камилла, 16.01.2026 12:43, выпадающий список для проекта
class CustomDropDown extends StatefulWidget {
  final List<String> _items; // Список значений
  final double padding; // Внутренние отступы
  final double margin; // Внешние отступы
  final Color color; // Цвет списка
  final String hintText; // Заголовок списка
  final double borderRadius; // Закругление
  // final String selectedIndex; // Выбранное значение

  const CustomDropDown({
    super.key,
    required List<String> items,
    required this.padding,
    required this.margin,
    required this.color,
    required this.hintText,
    required this.borderRadius,
    // required this.selectedIndex,
  }) : _items = items;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: widget.margin),
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
      ),
      child: DropdownButton(
        value: selectedIndex,
        items: widget._items
            .map((String item) => DropdownMenuItem(value: item, child: Text(item)))
            .toList(),
        onChanged: (String? newValue) {
          selectedIndex = newValue;
        },
        hint: Text(
          widget.hintText,
          style: headlineRegular.copyWith(color: caption),
        ),
        isExpanded: true,
        underline: SizedBox(),
      ),
    );
  }
}
