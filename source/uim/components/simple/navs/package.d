module uim.components.navs;

public import uim.components.navs.item;
public import uim.components.navs.nav;
public import uim.components.navs.link;
public import uim.components.navs.list;

string navsRegistration() {
  return 
    UIMNav.toVUEComponent.globalRegistration~
    UIMNavItem.toVUEComponent.globalRegistration~
    UIMNavLink.toVUEComponent.globalRegistration~
    UIMNavList.toVUEComponent.globalRegistration;
    }