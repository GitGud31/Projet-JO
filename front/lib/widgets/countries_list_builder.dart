import 'package:flutter/material.dart';
import 'package:front/conts/styles.dart';
import 'package:front/models/pays.dart';
import 'package:gap/gap.dart';

class CountriesListBuilder extends StatelessWidget {
  const CountriesListBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final List<Pays> data;

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
                    key: Key(data[index].id),
                    expandedAlignment: Alignment.centerLeft,
                    childrenPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    title: Text(data[index].libelle),
                    leading: Image.asset("${data[index].id}.png", width: 30),
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
