module uim.components.layout;

public import uim.components.layout.container;
public import uim.components.layout.col;
public import uim.components.layout.row;

string layoutRegistration() {
  return 
    UIMContainer.toVUEComponent.globalRegistration~
    UIMCol.toVUEComponent.globalRegistration~
    UIMRow.toVUEComponent.globalRegistration;
}