import 'package:flutter/widgets.dart';

import '../themes/theme.dart';

class TopRowCard extends StatelessWidget {
  final int age;
  final String sex;
  final String category;

  const TopRowCard({
    Key? key,
    required this.age,
    required this.sex,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Age: $age", style: STTTheme.cardRowStyle),
          Text(category),
          Text("Sex: $sex", style: STTTheme.cardRowStyle),
        ],
      ),
    );
  }
}
