import 'package:bloc_architecture_app/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      context.select(
          (CounterCubit counterCubit) => counterCubit.state.counterValue.toString()),
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(fontWeight: FontWeight.bold, fontSize: 128),
    );
  }
}
