part of 'app_cubit.dart';

sealed class AppState {}

final class AppInitial extends AppState {}
final class SendMessageSuccessState extends AppState {}
final class SendMessageErrorState extends AppState {}
