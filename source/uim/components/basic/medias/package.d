module uim.components.basic.medias;

public import uim.components.basic.medias.media;
public import uim.components.basic.medias.body_;

string mediasRegistration() {
  return 
  UIMMedia.toVUEComponent.globalRegistration~
  UIMMediaBody.toVUEComponent.globalRegistration;
}