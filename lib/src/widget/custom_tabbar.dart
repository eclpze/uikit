import 'package:flutter/material.dart';
import 'package:package_uikit/src/color.dart';
import 'package:package_uikit/src/styles.dart';

// Губайдуллина Камилла, 16.01.2026 13:10 , навигация для ввода данных в проекте
class CustomTabBar extends StatefulWidget {
  final List<String> icon; // Список иконок
  final List<String> title; // Список текстов
  final ValueChanged<int> onPressed; // Действие при нажатии
  final int selectedIndex; // Выбранное значение

  const CustomTabBar({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.selectedIndex,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        widget.onPressed(index);
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: accent,
      selectedLabelStyle: caption2Regular.copyWith(color: accent),
      unselectedLabelStyle: caption2Regular.copyWith(color: icons),
      unselectedItemColor: icons,
      currentIndex: widget.selectedIndex,
      items: List.generate(
        widget.title.length,
        (index) => BottomNavigationBarItem(
          icon: Image.asset(
            widget.icon[index],
            width: 32,
            height: 32,
            color: widget.selectedIndex == index ? accent : icons,
          ),
          label: widget.title[index],
        ),
      ),
    );
  }
}
