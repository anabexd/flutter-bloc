import 'package:aprendendo_bloc/models/pizza_model.dart';

abstract class HomeStates {}

class HomeLoading implements HomeStates {}

class HomeLoaded implements HomeStates {
  final List<Pizza> pizzas;

  const HomeLoaded({required this.pizzas});

  List<Object> get props => [pizzas];
}

class RemovePizza implements HomeStates {}
