import 'package:flutter_bloc/flutter_bloc.dart';

class LikeInteraction extends Cubit<bool> {
  LikeInteraction() : super(false);

  void like() => emit(true);
}
