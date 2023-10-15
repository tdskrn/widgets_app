import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca de comida',
      'Lorem veniam amet do exercitation incididunt dolor elit enim officia et tempor non et do.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rápida',
      'Occaecat incididunt qui ex sunt cillum adipisicing aliquip mollit irure magna adipisicing.',
      'assets/images/2.png'),
  SlideInfo(
      'Coma a vontade',
      'Minim fugiat ea voluptate reprehenderit deserunt velit pariatur elit laboris dolore ipsum.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app-tutorial-screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final pageviewController = PageController();
  bool endReached = false;
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
      if (currentPage != page) {
        setState(() {
          currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                currentPage = pageviewController.page!;
              });
            },
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((e) {
              return _Slide(slideInfo: e);
            }).toList(),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.8,
              left: MediaQuery.of(context).size.width * 0.5 - 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FadeIn(
                          child: _buildDot(currentPage == 0, colors.primary)),
                      FadeIn(
                          child: _buildDot(currentPage == 1, colors.primary)),
                      FadeIn(
                          child: _buildDot(currentPage == 2, colors.primary)),
                    ]),
              )),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('SKIP'),
              onPressed: () {
                context.pop();
              },
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => {},
                      child: const Text('Start'),
                    ),
                  ))
              : const SizedBox(),
        ]));
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slideInfo;
  const _Slide({required this.slideInfo});

  @override
  Widget build(BuildContext context) {
    final textThemeContext = Theme.of(context).textTheme;
    final titleStyle = textThemeContext.titleLarge;
    final captionStyle = textThemeContext.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(slideInfo.imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              slideInfo.title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              slideInfo.caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDot(bool isActive, Color color) {
  return FadeInLeft(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: FadeInDown(
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: isActive ? color : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ),
  );
}
