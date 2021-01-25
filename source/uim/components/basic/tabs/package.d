module uim.components.basic.tabs;

public import uim.components.basic.tabs.content;
public import uim.components.basic.tabs.pane;
public import uim.components.basic.tabs.list;

string tabsRegistration() {
  return 
    UIMTabContent.toVUEComponent.globalRegistration~
    UIMTabPane.toVUEComponent.globalRegistration~
    UIMTabList.toVUEComponent.globalRegistration;
}