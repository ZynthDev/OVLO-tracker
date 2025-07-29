import 'package:flutter/material.dart';

mixin FullPageLoaderMixin {
  final _LoaderController _loader = _LoaderController();

  void showFullPageLoader(BuildContext context) => _loader._show(context);
  void hideFullPageLoader() => _loader._hide();
}

class _LoaderController {
  OverlayEntry? _overlayEntry;

  void _show(BuildContext context) {
    if (_overlayEntry != null) return;

    _overlayEntry = OverlayEntry(
      builder: (_) => Stack(
        children: [
          ModalBarrier(
            dismissible: false,
            color: Colors.black.withValues(alpha: 0.5),
          ),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );

    Overlay.of(context, rootOverlay: true).insert(_overlayEntry!);
  }

  void _hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
