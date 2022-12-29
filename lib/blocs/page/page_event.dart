// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class SetPageEvent extends PageEvent {
  final int index;
  const SetPageEvent({
    required this.index,
  });
}
