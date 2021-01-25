module uim.components.basic.layout;

public import uim.components.basic.layout.container;
public import uim.components.basic.layout.col;
public import uim.components.basic.layout.row;

string layoutRegistration() {
  return 
    UIMContainer.toVUEComponent.globalRegistration~
    UIMCol.toVUEComponent.globalRegistration~
    UIMRow.toVUEComponent.globalRegistration;
}