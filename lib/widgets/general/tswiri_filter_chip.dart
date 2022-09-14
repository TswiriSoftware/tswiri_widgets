import 'package:flutter/material.dart';

class TswiriFilterChip extends StatelessWidget {
  ///   Chip used to display a Filter.
  /// - ```onTap()```
  const TswiriFilterChip({
    Key? key,
    required this.label,
    required this.toolTip,
    required this.selected,
    required this.onSelected,
    required this.color,
  }) : super(key: key);

  final String label;
  final String toolTip;
  final bool selected;
  final void Function(bool) onSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 2.5),
      child: FilterChip(
        label: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        onSelected: onSelected,
        selected: selected,
        selectedColor: color,
        tooltip: toolTip,
        shape: StadiumBorder(
          side: BorderSide(
            color: color,
          ),
        ),
      ),
    );
  }
}
