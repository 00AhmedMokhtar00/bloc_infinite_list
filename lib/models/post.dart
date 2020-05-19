import 'package:equatable/equatable.dart';

// We extend Equatable so that we can compare Posts
//by default, the equality operator returns true if and only if this and other are the same instance.

class Post extends Equatable {
  final int id;
  final String title;
  final String body;

  const Post({this.id, this.title, this.body});

  @override
  List<Object> get props => [id, title, body];

  @override
  String toString() => 'Post { id: $id }';
}