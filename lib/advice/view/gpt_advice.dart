import 'package:fertility_app/advice/cubit/cubit/get_advice_cubit.dart';
import 'package:fertility_app/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class GptAdvice extends StatelessWidget {
  const GptAdvice({super.key});

  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('AI Advice')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: ElevatedButton(
              onPressed: () async {
                showdialog(context);
                await BlocProvider.of<GetAdviceCubit>(context)
                    .getAdvice(double.parse(myData.result), myData.rawData);
              },
              child: Text(
                'Get AI Advice',
                style: TextStyle(fontSize: 30),
              )),
        ),
      ),
    );
  }
}

void showdialog(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      // Show the first popup
      return AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Advice for you'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'))
        ],
        content: BlocBuilder<GetAdviceCubit, GetAdviceState>(
            builder: (context, state) {
          if (state is GetAdviceInitial) {
            return Center(
              child: Transform.scale(
                scale: 1,
                child: const CircularProgressIndicator(),
              ),
            );
          } else if (state is GetAdviceSuccess) {
            return Text(state.advice);
          } else if (state is GetAdviceFailed) {
            return Text(state.error);
          }
          return Container();
        }),
      );
    },
  );
}
