module uim.components.basic.navbars;

public import uim.components;

public import uim.components.basic.navbars.brand;
public import uim.components.basic.navbars.navbar;
public import uim.components.basic.navbars.toggler;
public import uim.components.basic.navbars.togglericon;
public import uim.components.basic.navbars.collapse;
public import uim.components.basic.navbars.nav;
public import uim.components.basic.navbars.text;

string navbarsRegistration() {
  return 
    UIMNavbar.toVUEComponent.globalRegistration~
    UIMNavbarBrand.toVUEComponent.globalRegistration~
    UIMNavbarToggler.toVUEComponent.globalRegistration~
    UIMNavbarTogglericon.toVUEComponent.globalRegistration~
    UIMNavbarCollapse.toVUEComponent.globalRegistration~
    UIMNavbarNav.toVUEComponent.globalRegistration;
}

string navbarsVue3(string target) {
  string[] results; 

	results ~= UIMNavbar.toVue3(target);
	results ~= UIMNavbarBrand.toVue3(target);
	results ~= UIMNavbarToggler.toVue3(target);
	results ~= UIMNavbarTogglericon.toVue3(target);
	results ~= UIMNavbarCollapse.toVue3(target);
	results ~= UIMNavbarNav.toVue3(target);

  return results.join(";")~";";
} 