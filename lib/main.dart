import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void main() {
	runApp(const TnblApp());
}

class TnblApp extends StatelessWidget {
	const TnblApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'TNBL',
			debugShowCheckedModeBanner: false,
			home: const Scaffold(
				body: SafeArea(
					child: _ArchiveIframe(),
				),
			),
		);
	}
}

class _ArchiveIframe extends StatelessWidget {
	const _ArchiveIframe();

	@override
	Widget build(BuildContext context) {
		final element = html.IFrameElement()
			..src = 'archive/index.html'
			..style.border = '0'
			..style.width = '100%'
			..style.height = '100%';
		html.document.body?.style.margin = '0';
		// ignore: undefined_prefixed_name
		ui.platformViewRegistry.registerViewFactory('iframe-view', (int viewId) => element);
		return const HtmlElementView(viewType: 'iframe-view');
	}
}

