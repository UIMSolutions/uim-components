module uim.components.basic.dropdowns;

public import uim.components.basic.dropdowns.dropdown;
public import uim.components.basic.dropdowns.menu;
public import uim.components.basic.dropdowns.link;
public import uim.components.basic.dropdowns.button;
public import uim.components.basic.dropdowns.divider;
public import uim.components.basic.dropdowns.header;
public import uim.components.basic.dropdowns.togglelink;

string dropdownsRegistration() {
  return 
    UIMDropdown.toVUEComponent.globalRegistration~
    UIMDropdownMenu.toVUEComponent.globalRegistration~
    UIMDropdownLink.toVUEComponent.globalRegistration~
    UIMDropdownButton.toVUEComponent.globalRegistration~
    UIMDropdownDivider.toVUEComponent.globalRegistration~
    UIMDropdownHeader.toVUEComponent.globalRegistration~
    UIMDropdownTogglelink.toVUEComponent.globalRegistration;
}