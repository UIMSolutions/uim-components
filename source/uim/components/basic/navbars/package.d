module uim.components.basic.navbars;

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