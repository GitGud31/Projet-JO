import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/async_epreuve_controller.dart';
import 'package:front/controllers/async_sport_controller.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/styles.dart';
import 'package:gap/gap.dart';
import 'package:grouped_list/grouped_list.dart';

class GroupedViewContentBuilder extends ConsumerStatefulWidget {
  const GroupedViewContentBuilder({super.key});

  @override
  ConsumerState<GroupedViewContentBuilder> createState() =>
      _GroupedViewContentBuilderState();
}

class _GroupedViewContentBuilderState
    extends ConsumerState<GroupedViewContentBuilder> {
  @override
  Widget build(BuildContext context) {
    final sports = ref.watch(asyncSportsP);

    return ref.watch(asyncEpreuvesP).when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text("$error")),
        data: (epreuves) {
          return Card(
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  title:
                      Text("Sports", style: titleStyle.copyWith(fontSize: 18)),
                ),
                Expanded(
                  flex: 1,
                  child: GroupedListView(
                    sort: true,
                    floatingHeader: true,
                    addSemanticIndexes: true,
                    useStickyGroupSeparators: true,
                    order: GroupedListOrder.ASC,
                    elements: epreuves,
                    groupBy: (epreuve) => epreuve.sportId.toString(),
                    itemComparator: (epr1, epr2) =>
                        "${epr1.id}".compareTo("${epr2.id}"),
                    groupHeaderBuilder: (epreuve) {
                      final title = sports.value!
                          .firstWhere((s) => s.id == epreuve.sportId);

                      return Text(title.libelle, textAlign: TextAlign.center);
                    },
                    itemBuilder: (_, epreuve) {
                      return ExpansionTile(
                        expandedAlignment: Alignment.center,
                        title: Text(epreuve.libelle),
                        trailing: const Icon(Icons.arrow_drop_down),
                        childrenPadding:
                            const EdgeInsets.symmetric(vertical: 16),
                        children: [
                          Text("Epreuve site ${epreuve.lieu}"),
                          const Gap(3),
                          Text("Medaille(s) Premier ${epreuve.idPremier}"),
                          const Gap(3),
                          Text("Medaille(s) Deuxieme ${epreuve.idDeuxieme}"),
                          const Gap(3),
                          Text("Medaille(s) Troisieme ${epreuve.idTroisieme}"),
                          const Gap(3),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class AdminGroupedViewContentBuilder extends ConsumerStatefulWidget {
  const AdminGroupedViewContentBuilder({super.key});

  @override
  ConsumerState<AdminGroupedViewContentBuilder> createState() =>
      _AdminGroupedViewContentBuilderState();
}

class _AdminGroupedViewContentBuilderState
    extends ConsumerState<AdminGroupedViewContentBuilder> {
  @override
  Widget build(BuildContext context) {
    final sports = ref.watch(asyncSportsP);

    return ref.watch(asyncEpreuvesP).when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text("$error")),
        data: (epreuves) {
          debugPrint("$epreuves");

          return Card(
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  title: Text("Add/Edit/Delet un Sport",
                      style: titleStyle.copyWith(fontSize: 18)),
                ),
                Expanded(
                  flex: 1,
                  child: GroupedListView(
                    sort: true,
                    floatingHeader: true,
                    addSemanticIndexes: true,
                    useStickyGroupSeparators: true,
                    order: GroupedListOrder.ASC,
                    elements: epreuves,
                    groupBy: (epreuve) => epreuve.sportId.toString(),
                    itemComparator: (epr1, epr2) =>
                        epr1.id.toString().compareTo(epr2.id.toString()),
                    groupHeaderBuilder: (epreuve) {
                      final title = sports.value!
                          .firstWhere((s) => s.id == epreuve.sportId);

                      return Text(title.libelle, textAlign: TextAlign.center);
                    },
                    itemBuilder: (_, epreuve) {
                      return ExpansionTile(
                        expandedAlignment: Alignment.centerLeft,
                        title: Text(epreuve.libelle),
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
        });
  }
}
