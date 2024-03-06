import 'package:flutter/material.dart';
import 'package:front/conts/styles.dart';
import 'package:gap/gap.dart';

class ListViewContentBuilder extends StatelessWidget {
  const ListViewContentBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final List data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Column(
        children: [
          ListTile(
            title: Text(title, style: titleStyle.copyWith(fontSize: 18)),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return ExpansionTile(
                    expandedAlignment: Alignment.centerLeft,
                    title: Text('Pays $index'),
                    trailing: const Icon(Icons.arrow_drop_down),
                    children: [
                      Text('Numbre of medals $index'),
                      const Gap(5),
                      const Text('Other data'),
                      const Gap(5),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
