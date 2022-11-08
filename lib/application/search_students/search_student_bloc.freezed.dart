// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchStudentDone,
    required TResult Function() initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchStudentDone,
    TResult? Function()? initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStudentDone value) searchStudentDone,
    required TResult Function(InitialSearch value) initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStudentDone value)? searchStudentDone,
    TResult? Function(InitialSearch value)? initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStudentEventCopyWith<$Res> {
  factory $SearchStudentEventCopyWith(
          SearchStudentEvent value, $Res Function(SearchStudentEvent) then) =
      _$SearchStudentEventCopyWithImpl<$Res, SearchStudentEvent>;
}

/// @nodoc
class _$SearchStudentEventCopyWithImpl<$Res, $Val extends SearchStudentEvent>
    implements $SearchStudentEventCopyWith<$Res> {
  _$SearchStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchStudentDoneCopyWith<$Res> {
  factory _$$SearchStudentDoneCopyWith(
          _$SearchStudentDone value, $Res Function(_$SearchStudentDone) then) =
      __$$SearchStudentDoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchStudentDoneCopyWithImpl<$Res>
    extends _$SearchStudentEventCopyWithImpl<$Res, _$SearchStudentDone>
    implements _$$SearchStudentDoneCopyWith<$Res> {
  __$$SearchStudentDoneCopyWithImpl(
      _$SearchStudentDone _value, $Res Function(_$SearchStudentDone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
  }) {
    return _then(_$SearchStudentDone(
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStudentDone implements SearchStudentDone {
  const _$SearchStudentDone({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'SearchStudentEvent.searchStudentDone(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStudentDone &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStudentDoneCopyWith<_$SearchStudentDone> get copyWith =>
      __$$SearchStudentDoneCopyWithImpl<_$SearchStudentDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchStudentDone,
    required TResult Function() initialSearch,
  }) {
    return searchStudentDone(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchStudentDone,
    TResult? Function()? initialSearch,
  }) {
    return searchStudentDone?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
    required TResult orElse(),
  }) {
    if (searchStudentDone != null) {
      return searchStudentDone(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStudentDone value) searchStudentDone,
    required TResult Function(InitialSearch value) initialSearch,
  }) {
    return searchStudentDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStudentDone value)? searchStudentDone,
    TResult? Function(InitialSearch value)? initialSearch,
  }) {
    return searchStudentDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
    required TResult orElse(),
  }) {
    if (searchStudentDone != null) {
      return searchStudentDone(this);
    }
    return orElse();
  }
}

abstract class SearchStudentDone implements SearchStudentEvent {
  const factory SearchStudentDone({required final String searchValue}) =
      _$SearchStudentDone;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchStudentDoneCopyWith<_$SearchStudentDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialSearchCopyWith<$Res> {
  factory _$$InitialSearchCopyWith(
          _$InitialSearch value, $Res Function(_$InitialSearch) then) =
      __$$InitialSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSearchCopyWithImpl<$Res>
    extends _$SearchStudentEventCopyWithImpl<$Res, _$InitialSearch>
    implements _$$InitialSearchCopyWith<$Res> {
  __$$InitialSearchCopyWithImpl(
      _$InitialSearch _value, $Res Function(_$InitialSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSearch implements InitialSearch {
  const _$InitialSearch();

  @override
  String toString() {
    return 'SearchStudentEvent.initialSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchStudentDone,
    required TResult Function() initialSearch,
  }) {
    return initialSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchStudentDone,
    TResult? Function()? initialSearch,
  }) {
    return initialSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStudentDone value) searchStudentDone,
    required TResult Function(InitialSearch value) initialSearch,
  }) {
    return initialSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchStudentDone value)? searchStudentDone,
    TResult? Function(InitialSearch value)? initialSearch,
  }) {
    return initialSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch(this);
    }
    return orElse();
  }
}

abstract class InitialSearch implements SearchStudentEvent {
  const factory InitialSearch() = _$InitialSearch;
}

/// @nodoc
mixin _$SearchStudentState {
  List<Student> get studentList => throw _privateConstructorUsedError;
  List<Student> get searchStudentlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStudentStateCopyWith<SearchStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStudentStateCopyWith<$Res> {
  factory $SearchStudentStateCopyWith(
          SearchStudentState value, $Res Function(SearchStudentState) then) =
      _$SearchStudentStateCopyWithImpl<$Res, SearchStudentState>;
  @useResult
  $Res call({List<Student> studentList, List<Student> searchStudentlist});
}

/// @nodoc
class _$SearchStudentStateCopyWithImpl<$Res, $Val extends SearchStudentState>
    implements $SearchStudentStateCopyWith<$Res> {
  _$SearchStudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentList = null,
    Object? searchStudentlist = null,
  }) {
    return _then(_value.copyWith(
      studentList: null == studentList
          ? _value.studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      searchStudentlist: null == searchStudentlist
          ? _value.searchStudentlist
          : searchStudentlist // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStudentStateCopyWith<$Res>
    implements $SearchStudentStateCopyWith<$Res> {
  factory _$$_SearchStudentStateCopyWith(_$_SearchStudentState value,
          $Res Function(_$_SearchStudentState) then) =
      __$$_SearchStudentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student> studentList, List<Student> searchStudentlist});
}

/// @nodoc
class __$$_SearchStudentStateCopyWithImpl<$Res>
    extends _$SearchStudentStateCopyWithImpl<$Res, _$_SearchStudentState>
    implements _$$_SearchStudentStateCopyWith<$Res> {
  __$$_SearchStudentStateCopyWithImpl(
      _$_SearchStudentState _value, $Res Function(_$_SearchStudentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentList = null,
    Object? searchStudentlist = null,
  }) {
    return _then(_$_SearchStudentState(
      studentList: null == studentList
          ? _value._studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      searchStudentlist: null == searchStudentlist
          ? _value._searchStudentlist
          : searchStudentlist // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$_SearchStudentState implements _SearchStudentState {
  const _$_SearchStudentState(
      {required final List<Student> studentList,
      required final List<Student> searchStudentlist})
      : _studentList = studentList,
        _searchStudentlist = searchStudentlist;

  final List<Student> _studentList;
  @override
  List<Student> get studentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentList);
  }

  final List<Student> _searchStudentlist;
  @override
  List<Student> get searchStudentlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchStudentlist);
  }

  @override
  String toString() {
    return 'SearchStudentState(studentList: $studentList, searchStudentlist: $searchStudentlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStudentState &&
            const DeepCollectionEquality()
                .equals(other._studentList, _studentList) &&
            const DeepCollectionEquality()
                .equals(other._searchStudentlist, _searchStudentlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_studentList),
      const DeepCollectionEquality().hash(_searchStudentlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStudentStateCopyWith<_$_SearchStudentState> get copyWith =>
      __$$_SearchStudentStateCopyWithImpl<_$_SearchStudentState>(
          this, _$identity);
}

abstract class _SearchStudentState implements SearchStudentState {
  const factory _SearchStudentState(
      {required final List<Student> studentList,
      required final List<Student> searchStudentlist}) = _$_SearchStudentState;

  @override
  List<Student> get studentList;
  @override
  List<Student> get searchStudentlist;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStudentStateCopyWith<_$_SearchStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
