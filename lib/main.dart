import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'iframe_stub.dart'
	if (dart.library.html) 'iframe_web.dart' as iframe;

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
					child: iframe.ArchiveIframe(),
				),
			),
		);
	}
}

