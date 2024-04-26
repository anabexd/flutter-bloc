import 'package:aprendendo_bloc/presenter/modules/home/bloc/home_states.dart';
import 'package:aprendendo_bloc/presenter/modules/home/widgets/home_loaded_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        if (state is HomeLoaded) {
          return const HomeLoadedWidget();
        }
        return const SizedBox.shrink();
      },
    ));
  }
}
