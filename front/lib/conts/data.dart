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
  const Pays(id: "1", libelle: "Venezuela"),
  const Pays(id: "2", libelle: "Japan"),
  const Pays(id: "3", libelle: "Hungary"),
  const Pays(id: "4", libelle: "Brazil"),
  const Pays(id: "5", libelle: "China"),
  const Pays(id: "6", libelle: "Sweden"),
  const Pays(id: "7", libelle: "United States"),
  const Pays(id: "8", libelle: "South Korea"),
  const Pays(id: "9", libelle: "France"),
];

final athletes = <Athlete>[
  const Athlete(id: "1", nom: "Rojas", prenom: "Yulimar", idPays: "1"),
  const Athlete(id: "2", nom: "Milák", prenom: "Kristóf", idPays: "3"),
  const Athlete(id: "3", nom: "Andrade", prenom: "Rebeca", idPays: "4"),
  const Athlete(id: "4", nom: "Mbappé", prenom: "Kylian", idPays: "9"),
  const Athlete(id: "5", nom: "Ledecky", prenom: "Katie", idPays: "7"),
  const Athlete(id: "6", nom: "Daiki", prenom: "Hashimoto", idPays: "2"),
  const Athlete(id: "7", nom: "Duplantis", prenom: "Armand", idPays: "6"),
  const Athlete(id: "8", nom: "San", prenom: "An", idPays: "8"),
  const Athlete(id: "9", nom: "WANG", prenom: "Chuqin", idPays: "5"),
];
