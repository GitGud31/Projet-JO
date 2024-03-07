import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/async_pays_controller.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/styles.dart';
import 'package:front/models/pays.dart';
import 'package:gap/gap.dart';

class CountriesListBuilder extends ConsumerStatefulWidget {
  const CountriesListBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final List<Pays> data;

  @override
  ConsumerState<CountriesListBuilder> createState() =>
      _CountriesListBuilderState();
}

class _CountriesListBuilderState extends ConsumerState<CountriesListBuilder> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(asyncPaysP).when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text("ee $error")),
          data: (pays) {
            return Card(
              elevation: 1,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.title,
                        style: titleStyle.copyWith(fontSize: 18)),
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
                            leading:
                                Image.asset("${pays[index].id}.png", width: 30),
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

class AdminCountriesListBuilder extends StatelessWidget {
  const AdminCountriesListBuilder({
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
                  return ListTile(
                    key: Key(data[index].id.toString()),
                    title: Text(data[index].libelle),
                    leading: Image.asset("${data[index].id}.png", width: 30),
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
  }
}
