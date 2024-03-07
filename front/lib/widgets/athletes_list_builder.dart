import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/async_athletes_controller.dart';
import 'package:front/controllers/async_pays_controller.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/styles.dart';

class AthletesListBuilder extends ConsumerStatefulWidget {
  const AthletesListBuilder({super.key});

  @override
  ConsumerState<AthletesListBuilder> createState() =>
      _AthletesListBuilderState();
}

class _AthletesListBuilderState extends ConsumerState<AthletesListBuilder> {
  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(asyncPaysP);

    return ref.watch(asyncAthletesP).when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text("$error")),
          data: (athletes) {
            return Card(
              elevation: 1,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Athletes",
                        style: titleStyle.copyWith(fontSize: 18)),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: athletes.length,
                        itemBuilder: (_, index) {
                          final fullname =
                              "${athletes[index].prenom} ${athletes[index].nom}";
                          final athleteCountry = countries.value!.firstWhere(
                              (country) =>
                                  country.id == athletes[index].paysId);

                          return ExpansionTile(
                            key: Key("${athletes[index].id}"),
                            expandedAlignment: Alignment.centerLeft,
                            title: Text(fullname),
                            trailing: const Icon(Icons.arrow_drop_down),
                            childrenPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            children: [
                              Text('Country: ${athleteCountry.libelle}'),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            );
          },
        );
  }
}

class AdminAthletesListBuilder extends ConsumerStatefulWidget {
  const AdminAthletesListBuilder({super.key});

  @override
  ConsumerState<AdminAthletesListBuilder> createState() =>
      _AdminAthletesListBuilderState();
}

class _AdminAthletesListBuilderState
    extends ConsumerState<AdminAthletesListBuilder> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(asyncAthletesP).when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text("$error")),
        data: (athletes) {
          return Card(
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  title: Text("Add/Edit/Delet un Athlete",
                      style: titleStyle.copyWith(fontSize: 18)),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      itemCount: athletes.length,
                      itemBuilder: (_, index) {
                        final fullname =
                            "${athletes[index].prenom} ${athletes[index].nom}";

                        return ListTile(
                          key: Key("${athletes[index].id}"),
                          title: Text(fullname),
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
                      }),
                ),
              ],
            ),
          );
        });
  }
}
