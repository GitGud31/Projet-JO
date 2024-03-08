import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/auth_controller.dart';
import 'package:front/conts/colors.dart';
import 'package:front/widgets/action_button.dart';
import 'package:gap/gap.dart';

final _passwordHiddenP = StateProvider<bool>((_) => true);

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();

    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final isPwdVisible = ref.watch(_passwordHiddenP);

    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          children: [
            const Gap(50),
            Image.asset(
              "login.png",
              fit: BoxFit.contain,
              width: MediaQuery.sizeOf(context).width / 5,
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //username
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2,
                      child: TextFormField(
                        controller: _usernameController,
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
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Username field cannot be empty';
                          }
                          return null;
                        },
                      ),
                    ),

                    const Gap(10),

                    //password
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: isPwdVisible,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password name cannot be empty.";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(5.5),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: GestureDetector(
                            onTap: () => ref
                                .read(_passwordHiddenP.notifier)
                                .update((state) => !state),
                            child: Icon(
                              !isPwdVisible
                                  ? Icons.visibility_off_rounded
                                  : Icons.remove_red_eye,
                            ),
                          ),
                          filled: true,
                          labelText: "Password",
                          labelStyle: const TextStyle(),
                        ),
                      ),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3,
                      height: 56,
                      child: ActionButton(
                        text: "Login",
                        textColor: white,
                        bgColor: gold!,
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            await ref.watch(authTokenP.notifier).login(
                                  _usernameController.text,
                                  _passwordController.text,
                                );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
