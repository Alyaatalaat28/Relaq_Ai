import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/features/object_recognition/presentation/views/widgets/image_upload.dart';
import 'package:relaq_ai/features/message/presentation/manager/cubit/app_cubit.dart';
import 'package:relaq_ai/features/object_recognition/presentation/views/widgets/process_button.dart';

class ObjectRecognitionViewBody extends StatelessWidget {
  const ObjectRecognitionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit=AppCubit.get(context);
        return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const UploadImageOptions(),
            const SizedBox(
              height: 30,
            ),
            ProcessButton(
              onPressed: (){
                    cubit.processImage();
              },
              text:'Recognize Object'
            ),
            const SizedBox(
              height: 10,
            ),
            if(cubit.category!=null)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                 decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                 ),  
                 child: Center(child: Text('Detected object: ${cubit.category}')),           
              ),
            )
          ],
        ),
      );
      }
    );
  }
}