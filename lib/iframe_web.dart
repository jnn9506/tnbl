// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/widgets.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart' as web;

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
		final body = html.document.body;
		if (body != null) {
			body.style.margin = '0';
			body.style.height = '100%';
		}
		// Register factory via flutter_web_plugins
		web.registerViewFactory('iframe-view', (int viewId) => element);
		return const HtmlElementView(viewType: 'iframe-view');
	}
}