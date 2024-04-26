import 'package:Meals_App/models/meals.dart';
import 'package:Meals_App/providers/filters_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterLabel extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final String imgPath;
  final Function onPressed;
  final int index;
  bool checked;
  FilterLabel({
    Key? key,
    required this.imgPath,
    required this.onPressed,
    required this.index,
    required this.checked,
  }) : super(key: key);

  @override
  ConsumerState<FilterLabel> createState() => _FilterLabelState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

class _FilterLabelState extends ConsumerState<FilterLabel> {
  Color background = Colors.grey;

  @override
  Widget build(BuildContext context) {
    if (widget.checked) {
      background = Colors.green;
    } else {
      background = Colors.grey;
    }
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.06, screenWidth * 0.05, screenWidth * 0.04, screenWidth * 0.05),
      child: InkWell(
        onTap: () {
          ref.watch(attributesProvider)[widget.index] = !ref.watch(attributesProvider)[widget.index];
          widget.checked = ref.watch(attributesProvider)[widget.index];
          setState(() {
            if (widget.checked) {
              background = Colors.green;
            } else {
              background = Colors.grey;
            }
          });
        },
        child: Container(
          width: 0.15 * screenWidth,
          height: 0.12 * screenHeight,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Image.asset(
              this.widget.imgPath,
            ),
          ),
        ),
      ),
    );
  }
}