module uim.components.basic.navs;

public import uim.components;

@safe:

public import uim.components.basic.navs.item;
public import uim.components.basic.navs.nav;
public import uim.components.basic.navs.link;
public import uim.components.basic.navs.list;

/* string navsRegistration() {
  return 
    UIMNav.toVUEComponent.globalRegistration~
    UIMNavItem.toVUEComponent.globalRegistration~
    UIMNavLink.toVUEComponent.globalRegistration~
    UIMNavList.toVUEComponent.globalRegistration;
}

string navsVue3(string target) {
  string[] results; 

	results ~= UIMNav.toVue3(target);
	results ~= UIMNavItem.toVue3(target);
	results ~= UIMNavLink.toVue3(target);
	results ~= UIMNavList.toVue3(target);

  return results.join(";")~";";
}  */