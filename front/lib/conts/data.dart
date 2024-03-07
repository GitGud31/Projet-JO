import 'package:front/models/athlete.dart';
import 'package:front/models/pays.dart';
import 'package:front/models/sport.dart';

final sports = <Map<String, dynamic>>[
  {
    'epreuve': 'Athlétisme 1',
    'sport': const Sport(id: "1", libelle: "Athlétisme")
  },
  {'epreuve': 'Aviron 1', 'sport': const Sport(id: "2", libelle: "Aviron")},
  {
    'epreuve': 'Basketball 1',
    'sport': const Sport(id: "3", libelle: "Basketball")
  },
  {'epreuve': 'Football 1', 'sport': const Sport(id: "4", libelle: "Football")},
  {'epreuve': 'Handball 1', 'sport': const Sport(id: "5", libelle: "Handball")},
  {'epreuve': 'Boxe 1', 'sport': const Sport(id: "6", libelle: "Boxe")},
  {
    'epreuve': 'Water Polo 1',
    'sport': const Sport(id: "7", libelle: "Water Polo")
  },
  {
    'epreuve': 'Haltérophilie 1',
    'sport': const Sport(id: "8", libelle: "Haltérophilie")
  },
];

final countries = <Pays>[
  const Pays(id: 1, libelle: "Venezuela", createdAt: null, updatedAt: null),
  const Pays(id: 2, libelle: "Japan", createdAt: null, updatedAt: null),
  const Pays(id: 3, libelle: "Hungary", createdAt: null, updatedAt: null),
  const Pays(id: 4, libelle: "Brazil", createdAt: null, updatedAt: null),
  const Pays(id: 5, libelle: "China", createdAt: null, updatedAt: null),
  const Pays(id: 6, libelle: "Sweden", createdAt: null, updatedAt: null),
  const Pays(id: 7, libelle: "United States", createdAt: null, updatedAt: null),
  const Pays(id: 8, libelle: "South Korea", createdAt: null, updatedAt: null),
  const Pays(id: 9, libelle: "France", createdAt: null, updatedAt: null),
];

final athletes = <Athlete>[
  const Athlete(
      id: 1,
      nom: "Rojas",
      prenom: "Yulimar",
      pays_id: 1,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 2,
      nom: "Milák",
      prenom: "Kristóf",
      pays_id: 3,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 3,
      nom: "Andrade",
      prenom: "Rebeca",
      pays_id: 4,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 4,
      nom: "Mbappé",
      prenom: "Kylian",
      pays_id: 9,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 5,
      nom: "Ledecky",
      prenom: "Katie",
      pays_id: 7,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 6,
      nom: "Daiki",
      prenom: "Hashimoto",
      pays_id: 2,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 7,
      nom: "Duplantis",
      prenom: "Armand",
      pays_id: 6,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 8,
      nom: "San",
      prenom: "An",
      pays_id: 8,
      createdAt: null,
      updatedAt: null),
  const Athlete(
      id: 9,
      nom: "WANG",
      prenom: "Chuqin",
      pays_id: 5,
      createdAt: null,
      updatedAt: null),
];
