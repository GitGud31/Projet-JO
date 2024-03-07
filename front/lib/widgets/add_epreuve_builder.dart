import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/data.dart';
import 'package:front/models/sport.dart';
import 'package:front/widgets/action_button.dart';
import 'package:gap/gap.dart';

class AddEpreuveBuilder extends ConsumerStatefulWidget {
  const AddEpreuveBuilder({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddEpreuveBuilderState();
}

class _AddEpreuveBuilderState extends ConsumerState<AddEpreuveBuilder> {
  final _addEpreuveFormKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();

  late TextEditingController _epreuveNameController;
  late TextEditingController _epreuveSiteController;

  @override
  void initState() {
    super.initState();

    _epreuveNameController = TextEditingController();
    _epreuveSiteController = TextEditingController();
  }

  List<DropdownMenuEntry<String>> dropDownMenuEntries() {
    return sports
        .map(
          (dataMap) => DropdownMenuEntry(
              value: (dataMap['sport'] as Sport).libelle,
              label: (dataMap['sport'] as Sport).libelle),
        )
        .toList();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() => selectedDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final formatedDate =
        "${selectedDate.year}/${selectedDate.month}/${selectedDate.day}";

    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _addEpreuveFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sport dropdown list
              DropdownMenu<String>(
                initialSelection: (sports.first["sport"] as Sport).libelle,
                onSelected: (value) {
                  //TODO update value
                },
                dropdownMenuEntries: dropDownMenuEntries(),
              ),

              // epreuve name
              const Gap(10),
              TextFormField(
                controller: _epreuveNameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  prefixIcon: const Icon(Icons.apps_outlined),
                  filled: true,
                  labelText: "Name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name field cannot be empty';
                  }
                  return null;
                },
              ),

              // epreuve site
              const Gap(10),
              TextFormField(
                controller: _epreuveSiteController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  prefixIcon: const Icon(Icons.apps_outlined),
                  filled: true,
                  labelText: "Site",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Site field cannot be empty';
                  }
                  return null;
                },
              ),

              // date time picker
              const Gap(10),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Selected date:♂ $formatedDate'),
              ),

              const Gap(10),
              ActionButton(
                text: "Submit",
                textColor: white,
                bgColor: gold!,
                onTap: () {
                  if (_addEpreuveFormKey.currentState!.validate()) {
                    //TODO send add epreuve request

                    _epreuveNameController.clear();
                    _epreuveSiteController.clear();
                    selectedDate = DateTime.now();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
