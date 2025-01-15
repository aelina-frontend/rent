part of 'rent_cubit.dart';

sealed class RentState extends Equatable {
  const RentState();
  @override
  List<Object> get props => [];
}

final class RentInitial extends RentState {

}

final class RentLoading extends RentState {

}

final class RentSuccess extends RentState {
final List<Category> categories;

  RentSuccess({required this.categories});
@override
List<Object> get props => [categories]; //смотрит нет ли похожих данных
}

final class RentError extends RentState {
  final String error;

  RentError({required this.error});
  @override
  List<Object> get props => [];
}