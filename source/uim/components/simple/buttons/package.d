module uim.components.buttons;

public import uim.components.buttons.buttonobj;
public import uim.components.buttons.button;
public import uim.components.buttons.link;
public import uim.components.buttons.group;
public import uim.components.buttons.toolbar;

string buttonsRegistration() {
  return 
    UIMButton.toVUEComponent.globalRegistration~
    UIMButtonLink.toVUEComponent.globalRegistration~
    UIMButtonGroup.toVUEComponent.globalRegistration~
    UIMButtonToolbar.toVUEComponent.globalRegistration;
}