import 'package:counterapp/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state){
            return Text('$state', style: texttheme.headline2,);
          },
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: Key('counter_view_increment_FloatingActionButton'),
              child: Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment()),
          SizedBox(height: 8),
          FloatingActionButton(
              key: Key('counter_view_decrement_FloatingActionButton'),
              child: Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement()),        ],
      ),
    );
  }
}
