import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ninja/features/home/view/widget/all_todos_header.dart';
import 'package:task_ninja/features/home/view/widget/dot_pattern_bg.dart';
import 'package:task_ninja/features/home/view/widget/pinned_header.dart';
import 'package:task_ninja/features/home/view/widget/pinned_icon.dart';
import 'package:task_ninja/features/home/view/widget/todos_grid_view.dart';
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
      backgroundColor: const Color(0xFF111111),
      // appBar: AppBar(
      //   title: const Text('All Task'),
      // ),
      drawer: Opacity(
        opacity: 0.9,
        child: Container(
          width: double.infinity,
          color: Colors.green,
          child: Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(
                          Icons.cancel_outlined,
                          size: 40.0,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(
                          Icons.settings,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
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
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                verticalDirection: VerticalDirection.down,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // const AddYourNote(),
                  //TextField
                  Container(
                    height: 200,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.13),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        'Create Todo'.text.xl4.medium.white.make(),
                        Expanded(
                          child: Container(
                            color: Colors.white10,
                            child: FormBuilderTextField(
                              name: "note",
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              onTap: () {},
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.bold,
                              ),

                              // focusNode: focusNode,
                              keyboardType: TextInputType.multiline,
                              // validator: validator,
                              textInputAction: TextInputAction.newline,
                              decoration: InputDecoration(
                                hintText: "Add your note 💡",
                                filled: true,
                                fillColor: Colors.transparent,
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                                errorStyle: const TextStyle(color: Colors.orange),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.red, width: 1.0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.red, width: 1.0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.add,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  const TodosHeader(headerIcon: PinnedIcon(), headername: 'Pinned'),
                  15.heightBox,
                  //only 2 pinned task
                  const TodosGridView(taskCount: 2),
                  30.heightBox,
                  const AllTodosHeader(),
                  15.heightBox,
                  const TodosGridView(taskCount: 10),
                ],
              ).px12(),
            ),
          ),
        ],
      ),
    );
  }
}
