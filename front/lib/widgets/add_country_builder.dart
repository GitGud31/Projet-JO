import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/colors.dart';
import 'package:front/widgets/action_button.dart';
import 'package:gap/gap.dart';

class AddCountryBuilder extends ConsumerStatefulWidget {
  const AddCountryBuilder({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddCountryBuilderState();
}

class _AddCountryBuilderState extends ConsumerState<AddCountryBuilder> {
  final _addCountryFormKey = GlobalKey<FormState>();

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
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
              //Country name
              TextFormField(
                controller: _controller,
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
                  labelText: "Country",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Country name field cannot be empty';
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

                    _controller.clear();
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
