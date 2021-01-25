module uim.components.basic.buttons;

public import uim.components.basic.buttons.buttonobj;
public import uim.components.basic.buttons.button;
public import uim.components.basic.buttons.link;
public import uim.components.basic.buttons.group;
public import uim.components.basic.buttons.toolbar;

string buttonsRegistration() {
  return 
    UIMButton.toVUEComponent.globalRegistration~
    UIMButtonLink.toVUEComponent.globalRegistration~
    UIMButtonGroup.toVUEComponent.globalRegistration~
    UIMButtonToolbar.toVUEComponent.globalRegistration;
}