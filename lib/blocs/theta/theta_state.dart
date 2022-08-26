// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theta_bloc.dart';

class ThetaState extends Equatable {
  final String message;
  final String fileUrl;
  final String cameraState;
  final String id;
  final bool finishedSaving;
  final List<XFile>? images;
  final int imageIndex;

  const ThetaState(
      {required this.message,
      this.fileUrl = "",
      this.cameraState = "initial",
      this.id = "",
      this.finishedSaving = false,
      this.imageIndex = 0,
      this.images});

  factory ThetaState.initial() =>
      const ThetaState(message: "Response from Camera");

  @override
  List<dynamic> get props =>
      [images, message, id, cameraState, finishedSaving, imageIndex, fileUrl];

  @override
  bool get stringify => true;

  ThetaState copyWith({
    String? message,
    String? fileUrl,
    String? cameraState,
    String? id,
    bool? finishedSaving,
    int? imageIndex,
    List<XFile>? images,
  }) {
    return ThetaState(
      message: message ?? this.message,
      fileUrl: fileUrl ?? this.fileUrl,
      cameraState: cameraState ?? this.cameraState,
      id: id ?? this.id,
      finishedSaving: finishedSaving ?? this.finishedSaving,
      imageIndex: imageIndex ?? this.imageIndex,
      images: images ?? this.images,
    );
  }
}
