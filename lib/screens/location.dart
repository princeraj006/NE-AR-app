import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Location1 extends StatefulWidget {
  const Location1({super.key});

  @override
  State<Location1> createState() => _Location1State();
}

class _Location1State extends State<Location1> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://mywebar.com/p/Project_2_nqq1zfrx8m'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // child: const ModelViewer(
          //   backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
          //   src: 'assets/models/HeardIsland.gltf',
          //   alt: 'A 3D model',
          //   ar: true,

          //   autoRotate: true,
          //   // iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
          //   disableZoom: true,
          // ),
          child: WebViewWidget(controller: controller),
        ),
      ),
    );
  }
}
