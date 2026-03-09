// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosHash() => r'4c15a77d3f0eae23a6cd2463c694650e5004beaf';

/// See also [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$tdooCurrentFilterHash() => r'6357910341656bfdbb767c9784ef948d5f723d3f';

/// See also [TdooCurrentFilter].
@ProviderFor(TdooCurrentFilter)
final tdooCurrentFilterProvider =
    AutoDisposeNotifierProvider<TdooCurrentFilter, FilterType>.internal(
  TdooCurrentFilter.new,
  name: r'tdooCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tdooCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TdooCurrentFilter = AutoDisposeNotifier<FilterType>;
String _$todosHash() => r'2a967dc8c4d704c9b05e9198dbf21b1428e03325';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider = NotifierProvider<Todos, List<Todo>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
