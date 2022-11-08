// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student student) addStudentToHive,
    required TResult Function(String imagePath) changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student student)? addStudentToHive,
    TResult? Function(String imagePath)? changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student student)? addStudentToHive,
    TResult Function(String imagePath)? changeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentToHive value) addStudentToHive,
    required TResult Function(ChangeImage value) changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentToHive value)? addStudentToHive,
    TResult? Function(ChangeImage value)? changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentEventCopyWith<$Res> {
  factory $AddStudentEventCopyWith(
          AddStudentEvent value, $Res Function(AddStudentEvent) then) =
      _$AddStudentEventCopyWithImpl<$Res, AddStudentEvent>;
}

/// @nodoc
class _$AddStudentEventCopyWithImpl<$Res, $Val extends AddStudentEvent>
    implements $AddStudentEventCopyWith<$Res> {
  _$AddStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddStudentToHiveCopyWith<$Res> {
  factory _$$AddStudentToHiveCopyWith(
          _$AddStudentToHive value, $Res Function(_$AddStudentToHive) then) =
      __$$AddStudentToHiveCopyWithImpl<$Res>;
  @useResult
  $Res call({Student student});
}

/// @nodoc
class __$$AddStudentToHiveCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$AddStudentToHive>
    implements _$$AddStudentToHiveCopyWith<$Res> {
  __$$AddStudentToHiveCopyWithImpl(
      _$AddStudentToHive _value, $Res Function(_$AddStudentToHive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$AddStudentToHive(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }
}

/// @nodoc

class _$AddStudentToHive implements AddStudentToHive {
  const _$AddStudentToHive({required this.student});

  @override
  final Student student;

  @override
  String toString() {
    return 'AddStudentEvent.addStudentToHive(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentToHive &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentToHiveCopyWith<_$AddStudentToHive> get copyWith =>
      __$$AddStudentToHiveCopyWithImpl<_$AddStudentToHive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student student) addStudentToHive,
    required TResult Function(String imagePath) changeImage,
  }) {
    return addStudentToHive(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student student)? addStudentToHive,
    TResult? Function(String imagePath)? changeImage,
  }) {
    return addStudentToHive?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student student)? addStudentToHive,
    TResult Function(String imagePath)? changeImage,
    required TResult orElse(),
  }) {
    if (addStudentToHive != null) {
      return addStudentToHive(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentToHive value) addStudentToHive,
    required TResult Function(ChangeImage value) changeImage,
  }) {
    return addStudentToHive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentToHive value)? addStudentToHive,
    TResult? Function(ChangeImage value)? changeImage,
  }) {
    return addStudentToHive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
    required TResult orElse(),
  }) {
    if (addStudentToHive != null) {
      return addStudentToHive(this);
    }
    return orElse();
  }
}

abstract class AddStudentToHive implements AddStudentEvent {
  const factory AddStudentToHive({required final Student student}) =
      _$AddStudentToHive;

  Student get student;
  @JsonKey(ignore: true)
  _$$AddStudentToHiveCopyWith<_$AddStudentToHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeImageCopyWith<$Res> {
  factory _$$ChangeImageCopyWith(
          _$ChangeImage value, $Res Function(_$ChangeImage) then) =
      __$$ChangeImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ChangeImageCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$ChangeImage>
    implements _$$ChangeImageCopyWith<$Res> {
  __$$ChangeImageCopyWithImpl(
      _$ChangeImage _value, $Res Function(_$ChangeImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ChangeImage(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeImage implements ChangeImage {
  const _$ChangeImage({required this.imagePath});

  @override
  final String imagePath;

  @override
  String toString() {
    return 'AddStudentEvent.changeImage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImage &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImageCopyWith<_$ChangeImage> get copyWith =>
      __$$ChangeImageCopyWithImpl<_$ChangeImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student student) addStudentToHive,
    required TResult Function(String imagePath) changeImage,
  }) {
    return changeImage(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student student)? addStudentToHive,
    TResult? Function(String imagePath)? changeImage,
  }) {
    return changeImage?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student student)? addStudentToHive,
    TResult Function(String imagePath)? changeImage,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentToHive value) addStudentToHive,
    required TResult Function(ChangeImage value) changeImage,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentToHive value)? addStudentToHive,
    TResult? Function(ChangeImage value)? changeImage,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class ChangeImage implements AddStudentEvent {
  const factory ChangeImage({required final String imagePath}) = _$ChangeImage;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$ChangeImageCopyWith<_$ChangeImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddStudentState {
  Student get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStudentStateCopyWith<AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentStateCopyWith<$Res> {
  factory $AddStudentStateCopyWith(
          AddStudentState value, $Res Function(AddStudentState) then) =
      _$AddStudentStateCopyWithImpl<$Res, AddStudentState>;
  @useResult
  $Res call({Student student});
}

/// @nodoc
class _$AddStudentStateCopyWithImpl<$Res, $Val extends AddStudentState>
    implements $AddStudentStateCopyWith<$Res> {
  _$AddStudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_value.copyWith(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddStudentStateCopyWith<$Res>
    implements $AddStudentStateCopyWith<$Res> {
  factory _$$_AddStudentStateCopyWith(
          _$_AddStudentState value, $Res Function(_$_AddStudentState) then) =
      __$$_AddStudentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Student student});
}

/// @nodoc
class __$$_AddStudentStateCopyWithImpl<$Res>
    extends _$AddStudentStateCopyWithImpl<$Res, _$_AddStudentState>
    implements _$$_AddStudentStateCopyWith<$Res> {
  __$$_AddStudentStateCopyWithImpl(
      _$_AddStudentState _value, $Res Function(_$_AddStudentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$_AddStudentState(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }
}

/// @nodoc

class _$_AddStudentState implements _AddStudentState {
  const _$_AddStudentState({required this.student});

  @override
  final Student student;

  @override
  String toString() {
    return 'AddStudentState(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStudentState &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStudentStateCopyWith<_$_AddStudentState> get copyWith =>
      __$$_AddStudentStateCopyWithImpl<_$_AddStudentState>(this, _$identity);
}

abstract class _AddStudentState implements AddStudentState {
  const factory _AddStudentState({required final Student student}) =
      _$_AddStudentState;

  @override
  Student get student;
  @override
  @JsonKey(ignore: true)
  _$$_AddStudentStateCopyWith<_$_AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
