import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/data.dart';
import 'package:front/widgets/action_button.dart';
import 'package:gap/gap.dart';

class AddAthleteBuilder extends ConsumerStatefulWidget {
  const AddAthleteBuilder({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddAthleteBuilderState();
}

class _AddAthleteBuilderState extends ConsumerState<AddAthleteBuilder> {
  final _addCountryFormKey = GlobalKey<FormState>();

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
  }

  List<DropdownMenuEntry<String>> dropDownMenuEntries() {
    return countries
        .map((dataMap) =>
            DropdownMenuEntry(value: dataMap.libelle, label: dataMap.libelle))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _addCountryFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // countries dropdown list
              DropdownMenu<String>(
                initialSelection: (countries.first).libelle,
                onSelected: (value) {
                  //TODO update value
                },
                dropdownMenuEntries: dropDownMenuEntries(),
              ),

              //first name
              TextFormField(
                controller: _firstNameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  prefixIcon: const Icon(Icons.flag),
                  filled: true,
                  labelText: "First name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'First name name field cannot be empty';
                  }
                  return null;
                },
              ),
              const Gap(10),

              //last name
              TextFormField(
                controller: _firstNameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  prefixIcon: const Icon(Icons.flag),
                  filled: true,
                  labelText: "Last name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Last name name field cannot be empty';
                  }
                  return null;
                },
              ),

              const Gap(10),
              ActionButton(
                text: "Submit",
                textColor: white,
                bgColor: gold!,
                onTap: () {
                  if (_addCountryFormKey.currentState!.validate()) {
                    //TODO send add country request

                    _firstNameController.clear();
                    _lastNameController.clear();
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
