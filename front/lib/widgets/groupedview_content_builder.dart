import 'package:flutter/material.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/styles.dart';
import 'package:front/models/sport.dart';
import 'package:gap/gap.dart';
import 'package:grouped_list/grouped_list.dart';

class GroupedViewContentBuilder extends StatelessWidget {
  const GroupedViewContentBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final List<Map<String, dynamic>> data;
  final String title;

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
            child: GroupedListView(
              sort: true,
              floatingHeader: true,
              addSemanticIndexes: true,
              useStickyGroupSeparators: true,
              order: GroupedListOrder.ASC,
              elements: data,
              groupBy: (element) => (element['sport'] as Sport).libelle,
              groupSeparatorBuilder: (String grpByValue) => Text(grpByValue),
              itemComparator: (item1, item2) =>
                  item1['epreuve'].compareTo(item2['epreuve']),
              groupHeaderBuilder: (elm) => Text(
                (elm['sport'] as Sport).libelle,
                textAlign: TextAlign.center,
              ),
              itemBuilder: (_, element) {
                return ExpansionTile(
                  expandedAlignment: Alignment.centerLeft,
                  title: Text(element['epreuve']),
                  trailing: const Icon(Icons.arrow_drop_down),
                  children: const [
                    Text('Will take place in: Stade de X'),
                    Gap(5),
                    Text('Other data'),
                    Gap(5),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AdminGroupedViewContentBuilder extends StatelessWidget {
  const AdminGroupedViewContentBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final List<Map<String, dynamic>> data;
  final String title;

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
            child: GroupedListView(
              sort: true,
              floatingHeader: true,
              addSemanticIndexes: true,
              useStickyGroupSeparators: true,
              order: GroupedListOrder.ASC,
              elements: data,
              groupBy: (element) => (element['sport'] as Sport).libelle,
              groupSeparatorBuilder: (String grpByValue) => Text(grpByValue),
              itemComparator: (item1, item2) =>
                  item1['epreuve'].compareTo(item2['epreuve']),
              groupHeaderBuilder: (elm) => Text(
                (elm['sport'] as Sport).libelle,
                textAlign: TextAlign.center,
              ),
              itemBuilder: (_, element) {
                return ListTile(
                  title: Text(element['epreuve']),
                  trailing: Wrap(
                    children: [
                      ElevatedButton(
                        child: const Icon(Icons.add, color: white),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: Icon(Icons.edit, color: gold!),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: const Icon(Icons.delete),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
