import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_app/bloc/image_picker/image_picker_state.dart';
import 'package:image_picker/image_picker.dart';
import '../../utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerState()) {
    on<CameraCapture>(_cameraCapture);
    on<GalleryImagePicker>(_galleryPicker);
  }

  void _cameraCapture(
    CameraCapture event,
    Emitter<ImagePickerState> emit,
  ) async {
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }

  void _galleryPicker(
    GalleryImagePicker event,
    Emitter<ImagePickerState> emit,
  ) async {
    XFile? file = await imagePickerUtils.galleryImage();
    emit(state.copyWith(file: file));
  }
}
