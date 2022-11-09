import 'dart:async';
import 'package:tut_application/domain/models.dart';
import 'package:tut_application/presentation/base/base_view_model.dart';
import 'package:tut_application/presentation/resources/assets_manager.dart';
import 'package:tut_application/presentation/resources/strings_manager.dart';

class OnboardingViewModel extends BaseViewModel
    with OnboardingViewModelInputs, OnboardingViewModelOutputs {

  //stream controllers output

   StreamController _streamController = StreamController<SliderViewObject>();
   late final List<SliderObject> _list ;
   int _currentIndex = 0;



   //onboarding viewModel inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    //view model start your job
    _list = _getSliderData();
    _postDataToView();

  }

  @override
  int goNext() {
    int nextIndex = ++ _currentIndex;

    if (nextIndex == _list.length)
    {
      nextIndex = 0;
    }
    return nextIndex;  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1)
    {
      previousIndex = _list.length-1;
    }
    return previousIndex;  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject =>  _streamController.sink;

   //onboarding viewModel outputs

  @override
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject);

  // onboarding private func
   List<SliderObject> _getSliderData() => [
     SliderObject(AppStrings.onboardingSubTitle1,
         AppStrings.onboardingSubTitle1, ImageAssets.onboardingLogo1),
     SliderObject(AppStrings.onboardingSubTitle2,
         AppStrings.onboardingSubTitle2, ImageAssets.onboardingLogo2),
     SliderObject(AppStrings.onboardingSubTitle3,
         AppStrings.onboardingSubTitle3, ImageAssets.onboardingLogo3),
     SliderObject(AppStrings.onboardingSubTitle4,
         AppStrings.onboardingSubTitle4, ImageAssets.onboardingLogo4),
   ];
   void _postDataToView(){
     inputSliderViewObject.add(SliderViewObject(_list[_currentIndex],_list.length,_currentIndex));

   }
}

//inputs mean orders that are view model will receive from view
abstract class OnboardingViewModelInputs {
  int goNext(); // right arrow
  int goPrevious(); //left arrow
  void onPageChanged(int index);

  // stream controller input

Sink get inputSliderViewObject;
}

abstract class OnboardingViewModelOutputs {
  // stream controller outputs

  Stream<SliderViewObject> get outputSliderViewObject;
}
