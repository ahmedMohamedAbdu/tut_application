import 'package:tut_application/presentation/base/base_view_model.dart';

class OnboardingViewModel extends BaseViewModel with OnboardingViewModelInputs,OnboardingViewModelOutputs {

  //stream controllers output


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
}

//inputs mean orders that are view model will receive from view
abstract class OnboardingViewModelInputs {
  void goNext(); // right arrow
  void goPrevious(); //left arrow
  void onPageChanged(int index);
}

abstract class OnboardingViewModelOutputs {}
