import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/utils/bloc_observer.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/routes.dart';
import 'package:relaq_ai/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:relaq_ai/features/message/presentation/manager/cubit/app_cubit.dart';
import 'package:relaq_ai/features/signUp/presentation/manager/cubit/sign_up_cubit.dart';
import 'package:relaq_ai/firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
   );
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
        BlocProvider(
          create: (context)=>LoginCubit(),
          ),
         BlocProvider(
          create: (context)=>SignUpCubit(),
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

