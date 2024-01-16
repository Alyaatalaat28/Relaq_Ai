import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/utils/api_service.dart';

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
}
