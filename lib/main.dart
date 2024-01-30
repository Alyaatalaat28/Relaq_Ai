import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/utils/bloc_observer.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/routes.dart';
import 'package:relaq_ai/features/message/presentation/manager/cubit/app_cubit.dart';

void main() {
   Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=>AppCubit(),
          ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: scaffColor,
          ),
      ),
    );
  }
}

