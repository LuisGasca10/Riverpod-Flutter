// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'54920e17241c3558cd28f1c9a906db08b2e91f43';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = FutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = FutureProviderRef<String>;
String _$pokemonHash() => r'5be5d79db416a7dc305b4294c1c77a31e1156883';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pokemon].
@ProviderFor(pokemon)
const pokemonProvider = PokemonFamily();

/// See also [pokemon].
class PokemonFamily extends Family<AsyncValue<String>> {
  /// See also [pokemon].
  const PokemonFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonProvider';

  /// See also [pokemon].
  PokemonProvider call(
    int pokemonId,
  ) {
    return PokemonProvider(
      pokemonId,
    );
  }

  @visibleForOverriding
  @override
  PokemonProvider getProviderOverride(
    covariant PokemonProvider provider,
  ) {
    return call(
      provider.pokemonId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(FutureOr<String> Function(PokemonRef ref) create) {
    return _$PokemonFamilyOverride(this, create);
  }
}

class _$PokemonFamilyOverride implements FamilyOverride<AsyncValue<String>> {
  _$PokemonFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<String> Function(PokemonRef ref) create;

  @override
  final PokemonFamily overriddenFamily;

  @override
  PokemonProvider getProviderOverride(
    covariant PokemonProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [pokemon].
class PokemonProvider extends FutureProvider<String> {
  /// See also [pokemon].
  PokemonProvider(
    int pokemonId,
  ) : this._internal(
          (ref) => pokemon(
            ref as PokemonRef,
            pokemonId,
          ),
          from: pokemonProvider,
          name: r'pokemonProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonHash,
          dependencies: PokemonFamily._dependencies,
          allTransitiveDependencies: PokemonFamily._allTransitiveDependencies,
          pokemonId: pokemonId,
        );

  PokemonProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonId,
  }) : super.internal();

  final int pokemonId;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonProvider._internal(
        (ref) => create(ref as PokemonRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonId: pokemonId,
      ),
    );
  }

  @override
  (int,) get argument {
    return (pokemonId,);
  }

  @override
  FutureProviderElement<String> createElement() {
    return _PokemonProviderElement(this);
  }

  PokemonProvider _copyWith(
    FutureOr<String> Function(PokemonRef ref) create,
  ) {
    return PokemonProvider._internal(
      (ref) => create(ref as PokemonRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      pokemonId: pokemonId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonRef on FutureProviderRef<String> {
  /// The parameter `pokemonId` of this provider.
  int get pokemonId;
}

class _PokemonProviderElement extends FutureProviderElement<String>
    with PokemonRef {
  _PokemonProviderElement(super.provider);

  @override
  int get pokemonId => (origin as PokemonProvider).pokemonId;
}

String _$pokemonIdHash() => r'1bdb547371c640aef7ca388ff7d06fae5f2bef63';

/// See also [PokemonId].
@ProviderFor(PokemonId)
final pokemonIdProvider = NotifierProvider<PokemonId, int>.internal(
  PokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
