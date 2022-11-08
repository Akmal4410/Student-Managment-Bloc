// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newImage) updateEditImage,
    required TResult Function(Student student, int key) editStudentHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newImage)? updateEditImage,
    TResult? Function(Student student, int key)? editStudentHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newImage)? updateEditImage,
    TResult Function(Student student, int key)? editStudentHive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEditImage value) updateEditImage,
    required TResult Function(EditStudentHive value) editStudentHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateEditImage value)? updateEditImage,
    TResult? Function(EditStudentHive value)? editStudentHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEditImage value)? updateEditImage,
    TResult Function(EditStudentHive value)? editStudentHive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStudentEventCopyWith<$Res> {
  factory $EditStudentEventCopyWith(
          EditStudentEvent value, $Res Function(EditStudentEvent) then) =
      _$EditStudentEventCopyWithImpl<$Res, EditStudentEvent>;
}

/// @nodoc
class _$EditStudentEventCopyWithImpl<$Res, $Val extends EditStudentEvent>
    implements $EditStudentEventCopyWith<$Res> {
  _$EditStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateEditImageCopyWith<$Res> {
  factory _$$UpdateEditImageCopyWith(
          _$UpdateEditImage value, $Res Function(_$UpdateEditImage) then) =
      __$$UpdateEditImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String newImage});
}

/// @nodoc
class __$$UpdateEditImageCopyWithImpl<$Res>
    extends _$EditStudentEventCopyWithImpl<$Res, _$UpdateEditImage>
    implements _$$UpdateEditImageCopyWith<$Res> {
  __$$UpdateEditImageCopyWithImpl(
      _$UpdateEditImage _value, $Res Function(_$UpdateEditImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newImage = null,
  }) {
    return _then(_$UpdateEditImage(
      newImage: null == newImage
          ? _value.newImage
          : newImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEditImage implements UpdateEditImage {
  const _$UpdateEditImage({required this.newImage});

  @override
  final String newImage;

  @override
  String toString() {
    return 'EditStudentEvent.updateEditImage(newImage: $newImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEditImage &&
            (identical(other.newImage, newImage) ||
                other.newImage == newImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEditImageCopyWith<_$UpdateEditImage> get copyWith =>
      __$$UpdateEditImageCopyWithImpl<_$UpdateEditImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newImage) updateEditImage,
    required TResult Function(Student student, int key) editStudentHive,
  }) {
    return updateEditImage(newImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newImage)? updateEditImage,
    TResult? Function(Student student, int key)? editStudentHive,
  }) {
    return updateEditImage?.call(newImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newImage)? updateEditImage,
    TResult Function(Student student, int key)? editStudentHive,
    required TResult orElse(),
  }) {
    if (updateEditImage != null) {
      return updateEditImage(newImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEditImage value) updateEditImage,
    required TResult Function(EditStudentHive value) editStudentHive,
  }) {
    return updateEditImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateEditImage value)? updateEditImage,
    TResult? Function(EditStudentHive value)? editStudentHive,
  }) {
    return updateEditImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEditImage value)? updateEditImage,
    TResult Function(EditStudentHive value)? editStudentHive,
    required TResult orElse(),
  }) {
    if (updateEditImage != null) {
      return updateEditImage(this);
    }
    return orElse();
  }
}

abstract class UpdateEditImage implements EditStudentEvent {
  const factory UpdateEditImage({required final String newImage}) =
      _$UpdateEditImage;

  String get newImage;
  @JsonKey(ignore: true)
  _$$UpdateEditImageCopyWith<_$UpdateEditImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditStudentHiveCopyWith<$Res> {
  factory _$$EditStudentHiveCopyWith(
          _$EditStudentHive value, $Res Function(_$EditStudentHive) then) =
      __$$EditStudentHiveCopyWithImpl<$Res>;
  @useResult
  $Res call({Student student, int key});
}

/// @nodoc
class __$$EditStudentHiveCopyWithImpl<$Res>
    extends _$EditStudentEventCopyWithImpl<$Res, _$EditStudentHive>
    implements _$$EditStudentHiveCopyWith<$Res> {
  __$$EditStudentHiveCopyWithImpl(
      _$EditStudentHive _value, $Res Function(_$EditStudentHive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? key = null,
  }) {
    return _then(_$EditStudentHive(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditStudentHive implements EditStudentHive {
  const _$EditStudentHive({required this.student, required this.key});

  @override
  final Student student;
  @override
  final int key;

  @override
  String toString() {
    return 'EditStudentEvent.editStudentHive(student: $student, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditStudentHive &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditStudentHiveCopyWith<_$EditStudentHive> get copyWith =>
      __$$EditStudentHiveCopyWithImpl<_$EditStudentHive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newImage) updateEditImage,
    required TResult Function(Student student, int key) editStudentHive,
  }) {
    return editStudentHive(student, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newImage)? updateEditImage,
    TResult? Function(Student student, int key)? editStudentHive,
  }) {
    return editStudentHive?.call(student, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newImage)? updateEditImage,
    TResult Function(Student student, int key)? editStudentHive,
    required TResult orElse(),
  }) {
    if (editStudentHive != null) {
      return editStudentHive(student, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEditImage value) updateEditImage,
    required TResult Function(EditStudentHive value) editStudentHive,
  }) {
    return editStudentHive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateEditImage value)? updateEditImage,
    TResult? Function(EditStudentHive value)? editStudentHive,
  }) {
    return editStudentHive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEditImage value)? updateEditImage,
    TResult Function(EditStudentHive value)? editStudentHive,
    required TResult orElse(),
  }) {
    if (editStudentHive != null) {
      return editStudentHive(this);
    }
    return orElse();
  }
}

abstract class EditStudentHive implements EditStudentEvent {
  const factory EditStudentHive(
      {required final Student student,
      required final int key}) = _$EditStudentHive;

  Student get student;
  int get key;
  @JsonKey(ignore: true)
  _$$EditStudentHiveCopyWith<_$EditStudentHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditStudentState {
  Student get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditStudentStateCopyWith<EditStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStudentStateCopyWith<$Res> {
  factory $EditStudentStateCopyWith(
          EditStudentState value, $Res Function(EditStudentState) then) =
      _$EditStudentStateCopyWithImpl<$Res, EditStudentState>;
  @useResult
  $Res call({Student student});
}

/// @nodoc
class _$EditStudentStateCopyWithImpl<$Res, $Val extends EditStudentState>
    implements $EditStudentStateCopyWith<$Res> {
  _$EditStudentStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditStudentStateCopyWith<$Res>
    implements $EditStudentStateCopyWith<$Res> {
  factory _$$_EditStudentStateCopyWith(
          _$_EditStudentState value, $Res Function(_$_EditStudentState) then) =
      __$$_EditStudentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Student student});
}

/// @nodoc
class __$$_EditStudentStateCopyWithImpl<$Res>
    extends _$EditStudentStateCopyWithImpl<$Res, _$_EditStudentState>
    implements _$$_EditStudentStateCopyWith<$Res> {
  __$$_EditStudentStateCopyWithImpl(
      _$_EditStudentState _value, $Res Function(_$_EditStudentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$_EditStudentState(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }
}

/// @nodoc

class _$_EditStudentState implements _EditStudentState {
  const _$_EditStudentState({required this.student});

  @override
  final Student student;

  @override
  String toString() {
    return 'EditStudentState(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditStudentState &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditStudentStateCopyWith<_$_EditStudentState> get copyWith =>
      __$$_EditStudentStateCopyWithImpl<_$_EditStudentState>(this, _$identity);
}

abstract class _EditStudentState implements EditStudentState {
  const factory _EditStudentState({required final Student student}) =
      _$_EditStudentState;

  @override
  Student get student;
  @override
  @JsonKey(ignore: true)
  _$$_EditStudentStateCopyWith<_$_EditStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
