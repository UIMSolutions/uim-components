module uim.components.medias;

public import uim.components.medias.media;
public import uim.components.medias.body_;

string mediasRegistration() {
  return 
  UIMMedia.toVUEComponent.globalRegistration~
  UIMMediaBody.toVUEComponent.globalRegistration;
}