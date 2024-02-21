import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                height: 10,
                width: 40,
                color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
              );
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [
              AutofillHints.email,
            ],
            //dg  inputFormatters: [TextProjectInputFormatters()._formatter],
            focusNode: focusNodeTextFieldOne,
            textInputAction: TextInputAction.next,
            decoration: _InputDecorator()._emailInput,
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
          ),
        ],
      ),
    );
  }
}

class TextProjectInputFormatters {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (oldValue.text == 'a') {
      return oldValue;
    } else {
      return oldValue;
    }
  });
}

class _InputDecorator {
  final _emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
