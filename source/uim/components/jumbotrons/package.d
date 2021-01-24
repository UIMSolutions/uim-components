module uim.components.jumbotrons;

public import uim.components.jumbotrons.jumbotron;

string jumbotronsRegistration() {
  return 
    UIMJumbotron.toVUEComponent.globalRegistration;
}