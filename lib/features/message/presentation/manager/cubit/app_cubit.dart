import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:relaq_ai/core/utils/api_service.dart';
import 'package:relaq_ai/core/utils/object_detector.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context)=>BlocProvider.of(context);
  
  List<Map<String, String>> chatMessages = [];

  void sendMessages(String message)async{
   await DioHelper.sendMessage(
     data: {
          'prompt': message,
          'max_tokens': 150,
        },
      ).then((value) {
       if(value.statusCode==200){
        String aiResponse = value.data['choices'][0]['text'].toString();
          chatMessages.add({'sender': 'user', 'message': message});
          chatMessages.add({'sender': 'ai', 'message': aiResponse});
          emit(SendMessageSuccessState());    
    }
      }).catchError((e){
        if (kDebugMode) {
          print(e.toString());
        }
        emit(SendMessageErrorState());
      });
  }
  //object detection
     String? category;
    Future<void> processImage() async {
    try {
      final InputImage inputImage = InputImage.fromFilePath(imageFile!.path);
      final List<DetectedObject> detectedObjects = await objectDetector.processImage(inputImage);

       for (DetectedObject detectedObject in detectedObjects) {
         category = detectedObject.labels.first.text;

        if (kDebugMode) {
          print('Detected object: $category');
        }
      }
      emit(ProcessImageSuccessState());
    } catch (e) {
      if (kDebugMode) {
        print('Error processing image: $e');
      }
      emit(ProcessImageErrorState());
    }
  }
  //pick image
   XFile? imageFile;
   Future<void> pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    try {
       imageFile = await picker.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        emit(PickImageSuccessState());
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error picking image: $e');
      }
      emit(PickImageErrorState());
    }
  }
}
