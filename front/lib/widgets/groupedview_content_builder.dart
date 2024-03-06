import 'package:flutter/material.dart';
import 'package:front/conts/styles.dart';
import 'package:gap/gap.dart';
import 'package:grouped_list/grouped_list.dart';

class GroupedViewContentBuilder extends StatelessWidget {
  const GroupedViewContentBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final List data;
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
            child: GroupedListView<dynamic, String>(
              sort: true,
              floatingHeader: true,
              addSemanticIndexes: true,
              useStickyGroupSeparators: true,
              order: GroupedListOrder.ASC,
              elements: data,
              groupBy: (element) => element['sport'],
              groupSeparatorBuilder: (String grpByValue) => Text(grpByValue),
              itemComparator: (item1, item2) =>
                  item1['epreuve'].compareTo(item2['epreuve']),
              groupHeaderBuilder: (elm) =>
                  Text(elm['sport'], textAlign: TextAlign.center),
              itemBuilder: (_, dynamic element) {
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