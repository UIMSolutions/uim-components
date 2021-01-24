module uim.components.dropdowns;

public import uim.components.dropdowns.dropdown;
public import uim.components.dropdowns.menu;
public import uim.components.dropdowns.link;
public import uim.components.dropdowns.button;
public import uim.components.dropdowns.divider;
public import uim.components.dropdowns.header;
public import uim.components.dropdowns.togglelink;

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