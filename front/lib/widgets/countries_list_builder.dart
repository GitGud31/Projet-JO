import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/async_pays_controller.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/styles.dart';
import 'package:gap/gap.dart';

class CountriesListBuilder extends ConsumerStatefulWidget {
  const CountriesListBuilder({super.key});

  @override
  ConsumerState<CountriesListBuilder> createState() =>
      _CountriesListBuilderState();
}

class _CountriesListBuilderState extends ConsumerState<CountriesListBuilder> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(asyncPaysP).when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text("$error")),
          data: (pays) {
            return Card(
              elevation: 1,
              child: Column(
                children: [
                  ListTile(
                    title:
                        Text("Pays", style: titleStyle.copyWith(fontSize: 18)),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: pays.length,
                        itemBuilder: (_, index) {
                          return ExpansionTile(
                            key: Key(pays[index].id.toString()),
                            expandedAlignment: Alignment.centerLeft,
                            childrenPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            title: Text(pays[index].libelle),
                            leading: Image.network(
                                pays[index].flag ??
                                    "https://placehold.co/600x400",
                                width: 30),
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
          },
        );
  }
}

class AdminCountriesListBuilder extends ConsumerStatefulWidget {
  const AdminCountriesListBuilder({super.key});

  @override
  ConsumerState<AdminCountriesListBuilder> createState() =>
      _AdminCountriesListBuilderState();
}

class _AdminCountriesListBuilderState
    extends ConsumerState<AdminCountriesListBuilder> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(asyncPaysP).when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text("$error")),
        data: (pays) {
          return Card(
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  title: Text("Add/Edit/Delet un Pays",
                      style: titleStyle.copyWith(fontSize: 18)),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      itemCount: pays.length,
                      itemBuilder: (_, index) {
                        return ListTile(
                          key: Key(pays[index].id.toString()),
                          title: Text(pays[index].libelle),
                          leading: Image.network(
                              pays[index].flag ??
                                  "https://placehold.co/600x400",
                              width: 30),
                          trailing: Wrap(
                            children: [
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
