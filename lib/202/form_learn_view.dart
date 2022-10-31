import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {

  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            ElevatedButton(
              onPressed: () {
                if(_key.currentState?.validate() ?? false){
                  print('okey');
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator{
  String? isNotEmpty(String? data){
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmptyMessage;
  }
}

class ValidatorMessage{
  static const String _notEmptyMessage = 'Boş geçilemez';
}