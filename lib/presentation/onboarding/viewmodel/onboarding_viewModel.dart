import 'dart:async';

import 'package:tut_application/domain/models.dart';
import 'package:tut_application/presentation/base/base_view_model.dart';

class OnboardingViewModel extends BaseViewModel
    with OnboardingViewModelInputs, OnboardingViewModelOutputs {

  //stream controllers output

   StreamController _streamController = StreamController<SliderViewObject>();

  //onboarding viewModel inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => throw UnimplementedError();

   //onboarding viewModel outputs

  @override
  // TODO: implement outputSliderViewObject
  Stream get outputSliderViewObject => throw UnimplementedError();
}

//inputs mean orders that are view model will receive from view
abstract class OnboardingViewModelInputs {
  void goNext(); // right arrow
  void goPrevious(); //left arrow
  void onPageChanged(int index);

  // stream controller input

Sink get inputSliderViewObject;
}

abstract class OnboardingViewModelOutputs {
  // stream controller outputs

  Stream get outputSliderViewObject;
}
