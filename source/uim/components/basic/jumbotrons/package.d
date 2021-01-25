module uim.components.basic.jumbotrons;

public import uim.components.basic.jumbotrons.jumbotron;

string jumbotronsRegistration() {
  return 
    UIMJumbotron.toVUEComponent.globalRegistration;
}