import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatefulWidget {
  const TextLink({Key? key, required this.title, required this.uri, this.fontSize, this.fontWeight}) : super(key: key);

  final String title;
  final String uri;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  State<TextLink> createState() => _TextLinkState();
}

class _TextLinkState extends State<TextLink> {
  late bool isHover;

  @override
  void initState() {
    isHover = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        widget.title,
        style: TextStyle(
            fontWeight: widget.fontWeight ?? FontWeight.normal,
            fontSize: widget.fontSize ?? 14,
            decoration:
                isHover ? TextDecoration.underline : TextDecoration.none),
      ),
      onTap: () => launch(widget.uri),
      onHover: _onHover,
    );
  }

  _onHover(bool isOnHover) {
    setState(() {
      isHover = isOnHover;
    });
  }
}
