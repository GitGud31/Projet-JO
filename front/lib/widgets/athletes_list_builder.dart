import 'package:flutter/material.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/data.dart';
import 'package:front/conts/styles.dart';
import 'package:front/models/athlete.dart';

class AthletesListBuilder extends StatelessWidget {
  const AthletesListBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final List<Athlete> data;

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
                  final fullname = "${data[index].prenom} ${data[index].nom}";
                  final athleteCountry = countries.firstWhere(
                      (country) => country.id == data[index].idPays);

                  return ExpansionTile(
                    key: Key(data[index].id),
                    expandedAlignment: Alignment.centerLeft,
                    title: Text(fullname),
                    trailing: const Icon(Icons.arrow_drop_down),
                    childrenPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    children: [
                      Text('Country: ${athleteCountry.libelle}'),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class AdminAthletesListBuilder extends StatelessWidget {
  const AdminAthletesListBuilder({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final List<Athlete> data;

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
                  final fullname = "${data[index].prenom} ${data[index].nom}";

                  return ListTile(
                    key: Key(data[index].id),
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
  }
}
