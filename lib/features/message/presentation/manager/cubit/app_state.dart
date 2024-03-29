part of 'app_cubit.dart';

sealed class AppState {}

final class AppInitial extends AppState {}
final class SendMessageSuccessState extends AppState {}
final class SendMessageErrorState extends AppState {}
final class ProcessImageSuccessState extends AppState {}
final class ProcessImageErrorState extends AppState {}
final class PickImageSuccessState extends AppState {}
final class PickImageErrorState extends AppState {}