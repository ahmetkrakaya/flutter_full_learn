import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemoView extends StatelessWidget {
  const NoteDemoView({Key? key}) : super(key: key);

  final String _headText = 'Create Your First Note';
  final String _description =
      'Add a note about anything (your thoughts on climate change, or your history essay and share it with the world.)';
  final String _mainButtonText = 'Create a Note';
  final String _textButtonText = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            MyImages(name: ImageItems().appleWithBook),
            _TitleWidget(title: _headText),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _subTextWidget(
                text: _description,
              ),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(
              onPressed: () {},
              child: Text(_textButtonText),
            ),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent.shade400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _mainButtonText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

//Center Text widget
class _subTextWidget extends StatelessWidget {
  const _subTextWidget(
      {super.key, required this.text, this.textAlign = TextAlign.center});
  final TextAlign? textAlign;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.black87,
        fontSize: 18,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ImageItems {
  final String appleWithBook = 'image2.webp';
}

class MyImages extends StatelessWidget {
  const MyImages({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath(),
      fit: BoxFit.cover,
    );
    ;
  }

  String _nameWithPath() => 'assets/images/$name';
}

class ButtonHeights {
  static const double buttonNormalHeight = 70;
}
