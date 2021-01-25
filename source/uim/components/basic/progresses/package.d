module uim.components.basic.progresses;

public import uim.components.basic.progresses.progress;
public import uim.components.basic.progresses.bar;

string progressesRegistration() {
  return 
    UIMProgress.toVUEComponent.globalRegistration~
    UIMProgressBar.toVUEComponent.globalRegistration;
}