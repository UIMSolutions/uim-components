module uim.components.basic.navs;

public import uim.components.basic.navs.item;
public import uim.components.basic.navs.nav;
public import uim.components.basic.navs.link;
public import uim.components.basic.navs.list;

string navsRegistration() {
  return 
    UIMNav.toVUEComponent.globalRegistration~
    UIMNavItem.toVUEComponent.globalRegistration~
    UIMNavLink.toVUEComponent.globalRegistration~
    UIMNavList.toVUEComponent.globalRegistration;
}