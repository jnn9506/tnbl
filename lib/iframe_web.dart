// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
// ignore: undefined_prefixed_name
import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';

class ArchiveIframe extends StatelessWidget {
	const ArchiveIframe({super.key});

	@override
	Widget build(BuildContext context) {
		final element = html.IFrameElement()
			..src = 'archive/index.html'
			..style.border = '0'
			..style.width = '100%'
			..style.height = '100%';
		// Fill viewport
		html.document.documentElement?.style.height = '100%';
		html.document.body?.style
			..margin = '0'
			..height = '100%';
		// Register factory
		// ignore: undefined_prefixed_name
		ui.platformViewRegistry.registerViewFactory('iframe-view', (int viewId) => element);
		return const HtmlElementView(viewType: 'iframe-view');
	}
}

