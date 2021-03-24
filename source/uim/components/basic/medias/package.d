module uim.components.basic.medias;

public import uim.components;

@safe:

public import uim.components.basic.medias.media;
public import uim.components.basic.medias.body_;

string mediasRegistration() {
  return 
  UIMMedia.toVUEComponent.globalRegistration~
  UIMMediaBody.toVUEComponent.globalRegistration;
}

string mediasVue3(string target) {
  string[] results; 

	results ~= UIMMedia.toVue3(target);
	results ~= UIMMediaBody.toVue3(target);

  return results.join(";")~";";
} 