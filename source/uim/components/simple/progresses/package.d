module uim.components.progresses;

public import uim.components.progresses.progress;
public import uim.components.progresses.bar;

string progressesRegistration() {
  return 
    UIMProgress.toVUEComponent.globalRegistration~
    UIMProgressBar.toVUEComponent.globalRegistration;
}