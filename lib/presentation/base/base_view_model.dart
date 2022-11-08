abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  //shared variables and functions

}

abstract class BaseViewModelInputs {
  void start(); // first view model job
  void dispose(); // will be called when view model dies
}

abstract class BaseViewModelOutputs {}
