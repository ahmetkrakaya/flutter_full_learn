import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, this.controller}) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final String _obscureText = '#';
  final String _hintText = 'Password';
  bool _isSecure = true;

  void _changeSecure(){
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: _obscureText,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: _hintText,
        suffix: _onVisibilityIcon(),
      ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
        onPressed: _changeSecure,
        icon: AnimatedCrossFade(
          firstChild: const Icon(Icons.visibility_outlined),
          secondChild: const Icon(Icons.visibility_off_outlined),
          crossFadeState: _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
        //Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
      );
  }
}
