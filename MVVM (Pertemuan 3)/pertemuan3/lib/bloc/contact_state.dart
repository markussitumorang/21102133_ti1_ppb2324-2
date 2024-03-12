part of 'contact_cubit.dart';

@immutable
abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object> get props => [];
}

class ContactInitial extends ContactState {}

class ContactLoading extends ContactState {}

class ContactLoaded extends ContactState {
  final List<User> users;

  const ContactLoaded({required this.users});

  @override
  List<Object> get props => [users];
}

class ContactEmpty extends ContactState {}
