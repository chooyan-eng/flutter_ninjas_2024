import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ninjas_2024/component/link.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class SelfIntroPage extends StatefulWidget {
  const SelfIntroPage({super.key});

  @override
  State<SelfIntroPage> createState() => _SelfIntroPageState();
}

class _SelfIntroPageState extends State<SelfIntroPage> {
  Uint8List? _imageData;
  bool _isCropMode = false;
  final _controller = CropController();
  Uint8List? _croppedData;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/images/flutter_ninjas.png').then((image) {
      setState(() {
        _imageData = image.buffer.asUint8List();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final enableCrop = _imageData != null && _isCropMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Gap(32),
                ListItem.text('Tsuyoshi Chujo (Chooyan)'),
                const Gap(32),
                ListItem.text('Freelance Flutter Developer in Japan'),
                const Gap(32),
                ListItem.rich(const [
                  'Developing',
                  ' Flutter apps',
                  ', and providing',
                  ' technical advices',
                ]),
                const Row(
                  children: [
                    Gap(48),
                    _Logo(
                      label: 'Developing',
                      path: 'assets/images/livmap.png',
                    ),
                    Gap(120),
                    _Logo(
                      label: 'Supporting',
                      path: 'assets/images/studyplus.png',
                    ),
                  ],
                ),
                const Gap(32),
                GestureDetector(
                  onTap: () => setState(() {
                    _isCropMode = true;
                  }),
                  child: ListItem.rich(const [
                    'Author of',
                    ' crop_your_image',
                    ', a Flutter package providing',
                    ' Crop',
                    ' widget for cropping images feature',
                  ]),
                ),
                const Row(
                  children: [
                    Gap(48),
                    Link('https://pub.dev/packages/crop_your_image'),
                  ],
                ),
                const Gap(32),
                ListItem.rich(const [
                  '',
                  'Love Widget Tree!',
                ]),
              ].intersperse(const Gap(12)).toList(),
            ),
          ),
          if (_imageData != null)
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              right: enableCrop ? 120 : -500,
              top: 64,
              child: _croppedData == null
                  ? Stack(
                      children: [
                        SizedBox(
                          width: 500,
                          height: 200,
                          child: Crop(
                            controller: _controller,
                            withCircleUi: true,
                            interactive: true,
                            cornerDotBuilder: (_, __) =>
                                const SizedBox.shrink(),
                            image: _imageData!,
                            onCropped: (value) => setState(() {
                              _croppedData = value;
                            }),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child: ElevatedButton(
                            onPressed: _controller.cropCircle,
                            child: const Icon(Icons.cut),
                          ),
                        )
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Image.memory(_croppedData!),
                        ),
                        Text(
                          'Crop anywhere you want!',
                          style: Theme.of(context).textTheme.labelSmall,
                        )
                      ],
                    ),
            ),
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    required this.label,
    required this.path,
  });

  final String label;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Expanded(
            child: Image(image: AssetImage(path)),
          ),
        ],
      ),
    );
  }
}
