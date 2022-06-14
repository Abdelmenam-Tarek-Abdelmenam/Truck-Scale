part of 'layout_bloc.dart';

abstract class LayoutBlocEvent extends Equatable {
  const LayoutBlocEvent();
}

class ChangeActiveLayout extends LayoutBlocEvent {
  final ActiveLayout active;

  const ChangeActiveLayout(this.active);

  @override
  List<Object?> get props => [active];
}
