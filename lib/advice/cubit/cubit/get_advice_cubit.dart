import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:meta/meta.dart';

part 'get_advice_state.dart';

class GetAdviceCubit extends Cubit<GetAdviceState> {
  GetAdviceCubit() : super(GetAdviceInitial());

  List<Map<String, String>> getJson(double result, List<String> rawData) {
    List<Map<String, String>> messages;

    if (result == 1) {
      return messages = [
        {
          "role": "user",
          "content":
              "I was diagnosed with normal reproductive health by the doctor."
        },
        {
          "role": "user",
          "content":
              "Here is the data for the doctor's diagnosis: Season?: ${rawData[0]}, Age?: ${rawData[1]}, Any childish diseases?: ${rawData[2]}, Any accident or serious trauma?: ${rawData[3]}, Any surgical intervention?: ${rawData[4]}, Any highest fever last year: ${rawData[5]}, Frequency of alcohol consumption: ${rawData[6]}, What is your smoking habit?: ${rawData[7]}, Hours you sit per day: ${rawData[8]}"
        },
        {
          "role": "user",
          "content": "Help me with advice on maintaining health."
        },
        {"role": "assistant", "content": "Here are some tips for you:"}
      ];
    }

    return messages = [
      {
        "role": "user",
        "content":
            "I have been diagnosed by the doctor with reproductive health issues."
      },
      {
        "role": "user",
        "content":
            "Here is the data for the doctor's diagnosis: Season?: ${rawData[0]}, Age?: ${rawData[1]}, Any childish diseases?: ${rawData[2]}, Any accident or serious trauma?: ${rawData[3]}, Any surgical intervention?: ${rawData[4]}, Any highest fever last year: ${rawData[5]}, Frequency of alcohol consumption: ${rawData[6]}, What is your smoking habit?: ${rawData[7]}, Hours you sit per day: ${rawData[8]}"
      },
      {
        "role": "user",
        "content": "Help me come up with advice to improve my health."
      },
      {
        "role": "assistant",
        "content": "Here are some pieces of advice for you:"
      }
    ];
  }

  Future<void> getAdvice(double result, List<String> rawData) async {
    emit(GetAdviceInitial());
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':
          'Bearer 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',
      'Cookie':
          '__cf_bm=Lm0I17HmNpgdUKew8k2HkHkVI4k4DQ5Hckq4aZNTKiA-1702983813-1-AQ+kMy8B8iiMZlsoousYEpPYrvy8XG56krHZ3B51X52NyO9/0v7eUAxnOrRHUgb5qopJ+Cc35+2Za7gd7AN7Mto=; _cfuvid=G8FEDdJyrfTZx37QjmuxjgIVAUfFXK3VpivCFLdkwIs-1702983813095-0-604800000'
    };
    var data = json.encode({
      "model": "gpt-3.5-turbo",
      "messages": getJson(result, rawData),
      "temperature": 1,
      "top_p": 1,
      "n": 1,
      "stream": false,
      "max_tokens": 2000,
      "presence_penalty": 0,
      "frequency_penalty": 0
    });
    var dio = Dio();
    try {
      var response = await dio.request(
        'https://api.openai.com/v1/chat/completions',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );
      print(getJson(result, rawData));
      if (response.statusCode == 200) {
        print(json.encode(response.data));
        String content = response.data['choices'][0]['message']['content'];
        print(content);
        emit(GetAdviceSuccess(content));
      } else {
        print(response.statusMessage);
        emit(GetAdviceFailed(response.statusMessage!));
      }
    } catch (e) {
      throw (e.toString());
    }
  }
}
