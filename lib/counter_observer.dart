import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver{

  @override
  void onChange(Cubit cubit, Change change) {
    // TODO: implement onChange
    print('${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }

}