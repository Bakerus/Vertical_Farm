// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:get/get.dart';
// import 'package:vertical_farm/app/core/utils/extensions.dart';
// import 'package:vertical_farm/app/core/widgets/custom_elevated_button.dart';

// import '../controllers/camera_controller.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class CameraView extends GetView<CameraController> {
//   CameraView({Key? key}) : super(key: key);
//   InAppWebViewController? webView;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
//         child: SingleChildScrollView(
//           child: SizedBox(
//             height: 78.0.hp,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Camera",
//                       style: Get.theme.textTheme.titleLarge,
//                     ),
//                     FaIcon(
//                       FontAwesomeIcons.image,
//                       size: 38.0.sp,
//                     )
//                   ],
//                 ),
//                 Container(
//                   width: 100.0.wp,
//                   height: 38.0.hp,
//                   decoration: BoxDecoration(color: Colors.white),
//                   child: InAppWebView(
//                     initialUrlRequest: URLRequest(
//                       url:
//                           Uri.parse("http://192.168.43.47:8080/browserfs.html"),
//                     ),
//                     onWebViewCreated: (InAppWebViewController controller) {
//                       webView = controller;
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   height: 28.0.hp,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "Plantes:",
//                             style: Get.theme.textTheme.bodySmall,
//                           ),
//                           Text(
//                             "",
//                             style: Get.theme.textTheme.bodySmall,
//                           )
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Age Approximatif:",
//                             style: Get.theme.textTheme.bodySmall,
//                           ),
//                           Text(
//                             "",
//                             style: Get.theme.textTheme.bodySmall,
//                           )
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Phase de maturation:",
//                             style: Get.theme.textTheme.bodySmall,
//                           ),
//                           Text(
//                             "",
//                             style: Get.theme.textTheme.bodySmall,
//                           )
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "Conseils:",
//                             style: Get.theme.textTheme.bodySmall,
//                           ),
//                           Text(
//                             "",
//                             style: Get.theme.textTheme.bodySmall,
//                           )
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomElevatedButton(
//                             onPressed: () {},
//                             width: 12.0.wp,
//                             operation: "Mise à jour",
//                           ),
//                           CustomElevatedButton(
//                             onPressed: () {},
//                             width: 12.0.wp,
//                             operation: "Photo",
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vertical_farm/app/core/design/colors.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';

class CameraView extends StatefulWidget {
  @override
  CameraViewState createState() => CameraViewState();
}

class CameraViewState extends State<CameraView> {
  InAppWebViewController? webView;
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: AppColors.greenPrimay,
        home: Scaffold(
          backgroundColor: AppColors.greenPrimay,
            body: Column(children: <Widget>[
          Container(
            height: 27.0.hp,
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                  url: Uri.parse("http://10.69.202.197:8080/browserfs.html")),
              onWebViewCreated: (InAppWebViewController controller) {
                webView = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  this.progress = progress / 100;
                });
              },
            ),
          ),
          progress < 1.0
              ? LinearProgressIndicator(value: progress)
              : Container()
        ])));
  }
}
