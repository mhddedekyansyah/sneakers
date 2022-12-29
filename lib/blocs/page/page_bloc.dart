import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'page_event.dart';

class PageBloc extends Bloc<PageEvent, int> {
  PageBloc() : super(0) {
    on<SetPageEvent>((event, emit) {
      emit(event.index);
    });
  }
}
