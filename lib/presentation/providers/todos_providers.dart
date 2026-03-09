import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:uuid/uuid.dart';

import '../../domain/domain.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();

enum FilterType {
  all,
  completed,
  pending,
}

@riverpod
class TdooCurrentFilter extends _$TdooCurrentFilter {
  @override
  FilterType build() {
    return FilterType.all;
  }

  void changeFilter(FilterType newFilter) => state = newFilter;
}

@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() {
    return [
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now(),
      ),
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now(),
      ),
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null,
      ),
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now(),
      ),
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null,
      ),
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now(),
      ),
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null,
      ),
    ];
  }

  void addTodo() {
    final newTodo = Todo(
      id: uuid.v4(),
      description: RandomGenerator.getRandomName(),
      completedAt: null,
    );

    state = [...state, newTodo];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(
            completedAt: todo.completedAt == null ? DateTime.now() : null);
      }
      return todo;
    }).toList();
  }
}

@riverpod
List<Todo> filteredTodos(Ref ref) {
  final filter = ref.watch(tdooCurrentFilterProvider);
  final todos = ref.watch(todosProvider);
  switch (filter) {
    case FilterType.all:
      return todos;
    case FilterType.completed:
      return todos.where((todo) => todo.done).toList();
    case FilterType.pending:
      return todos.where((todo) => !todo.done).toList();
  }
}
