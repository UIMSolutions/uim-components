module uim.components.tabs;

public import uim.components.tabs.content;
public import uim.components.tabs.pane;
public import uim.components.tabs.list;

string tabsRegistration() {
  return 
    UIMTabContent.toVUEComponent.globalRegistration~
    UIMTabPane.toVUEComponent.globalRegistration~
    UIMTabList.toVUEComponent.globalRegistration;
}