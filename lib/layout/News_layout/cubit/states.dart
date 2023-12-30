import 'package:new_flutter_udemy2/layout/News_layout/cubit/cubit.dart';

abstract class NewsStates {}

class NewsInitialStates extends NewsStates{}

class BottomNavStates extends NewsStates{}

class GetBusinessLoadingState extends NewsStates{}

class GetBusinessSuccessState extends NewsStates{}

class GetBusinessErrorState extends NewsStates
{
  late final String error;

  GetBusinessErrorState(this.error);
}

class GetSportsLoadingState extends NewsStates{}

class GetSportsSuccessState extends NewsStates{}

class GetSportsErrorState extends NewsStates
{
  late final String error;

  GetSportsErrorState(this.error);
}

class GetScienceLoadingState extends NewsStates{}

class GetScienceSuccessState extends NewsStates{}

class GetScienceErrorState extends NewsStates
{
  late final String error;

  GetScienceErrorState(this.error);
}

  class GetSearchLoadingState extends NewsStates{}

class GetSearchSuccessState extends NewsStates{}

class GetSearchErrorState extends NewsStates
{
  late final String error;

  GetSearchErrorState(this.error);
}
