import 'package:flutter/material.dart';
import 'package:galeria_de_casas_flutter/utils/constants.dart';
import 'package:galeria_de_casas_flutter/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: InkWell(
          child: Ink(
              decoration: const BoxDecoration(
                  color: colorDarkBlue,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: colorWhite,
                  ),
                  addHorizontalSpace(3),
                  Text(
                    text,
                    style: const TextStyle(color: colorWhite),
                    maxLines: 2,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
