import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/dot_pattern_bg.dart';
import 'package:task_ninja/features/home/view/widget/glassmorphic_drawer.dart';
import 'package:task_ninja/features/home/view/widget/home_page_body.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(deferredLoading: true)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('All Task'),
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: const GlassmorphicDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
        child: const Icon(Icons.add),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const DotPatternBg(),
          50.heightBox,
          const HomePageBody(),
        ],
      ),
    );
  }
}
