import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/features/message/presentation/manager/cubit/app_cubit.dart';

class UploadImageOptions extends StatelessWidget {
  const UploadImageOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit=AppCubit.get(context);
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon:const Icon(
                Icons.photo,
                size: 40,
                color: primaryColor,
              ) ,
               onPressed: () { 
                  cubit.pickImage(context);
                },),
               const SizedBox(
                height: 5.0,
               ),
            if(cubit.imageFile==null)
            Text('select file',
             textAlign: TextAlign.center,
             style:GoogleFonts.oswald(
             color: whiteColor
          ),
          ),
           if(cubit.imageFile!=null)
            Text('image uploaded',
             textAlign: TextAlign.center,
             style:GoogleFonts.oswald(
             color: whiteColor
          ),
          )
          ],
        );
      }
    );
  }
}