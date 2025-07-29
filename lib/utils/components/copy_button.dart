import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyButton extends StatefulWidget {
  final String textToCopy;

  const CopyButton({super.key, required this.textToCopy});

  @override
  State<CopyButton> createState() => _CopyButtonState();
}

class _CopyButtonState extends State<CopyButton> {
  bool _copied = false;

  void _handleCopy() async {
    await Clipboard.setData(ClipboardData(text: widget.textToCopy));

    if (!mounted) return;

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied to clipboard'),
        duration: Duration(seconds: 1),
      ),
    );

    setState(() {
      _copied = true;
    });

    Future.delayed(Duration(seconds: 7), () {
      if (mounted) {
        setState(() {
          _copied = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: MediaQuery.of(context).size.width > 500 ? 60 : 40,
        width: MediaQuery.of(context).size.width > 500 ? 60 : 40,
        margin: EdgeInsets.only(left: 60, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withValues(alpha: 0.6),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            icon: Icon(
              _copied ? Icons.check : Icons.copy,
              color: _copied ? Colors.black : Colors.black,
              size: MediaQuery.of(context).size.width > 500 ? 22 : 16,
            ),
            onPressed: _copied ? null : _handleCopy,
          ),
        ),
      ),
    );
  }
}
