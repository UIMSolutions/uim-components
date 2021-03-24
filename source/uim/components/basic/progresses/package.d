module uim.components.basic.progresses;

public import uim.components;

@safe:

public import uim.components.basic.progresses.progress;
public import uim.components.basic.progresses.bar;

string progressesRegistration() {
  return 
    UIMProgress.toVUEComponent.globalRegistration~
    UIMProgressBar.toVUEComponent.globalRegistration;
}

string progressesVue3(string target) {
  string[] results; 

	results ~= UIMProgress.toVue3(target);
	results ~= UIMProgressBar.toVue3(target);

  return results.join(";")~";";
} 