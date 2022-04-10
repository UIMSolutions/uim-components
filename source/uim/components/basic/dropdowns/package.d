module uim.components.basic.dropdowns;

public import uim.components;

@safe:

public import uim.components.basic.dropdowns.dropdown;
public import uim.components.basic.dropdowns.menu;
public import uim.components.basic.dropdowns.link;
public import uim.components.basic.dropdowns.button;
public import uim.components.basic.dropdowns.divider;
public import uim.components.basic.dropdowns.header;
public import uim.components.basic.dropdowns.toggle;
public import uim.components.basic.dropdowns.togglelink;

/* string dropdownsRegistration() {
  return 
    UIMDropdown.toVUEComponent.globalRegistration~
    UIMDropdownMenu.toVUEComponent.globalRegistration~
    UIMDropdownLink.toVUEComponent.globalRegistration~
    UIMDropdownButton.toVUEComponent.globalRegistration~
    UIMDropdownDivider.toVUEComponent.globalRegistration~
    UIMDropdownHeader.toVUEComponent.globalRegistration~
    UIMDropdownToggleLink.toVUEComponent.globalRegistration;
}

string dropdownsVue3(string target) {
  string[] results; 

	results ~= UIMDropdown.toVue3(target);
	results ~= UIMDropdownMenu.toVue3(target);
	results ~= UIMDropdownLink.toVue3(target);
	results ~= UIMDropdownButton.toVue3(target);
	results ~= UIMDropdownDivider.toVue3(target);
	results ~= UIMDropdownHeader.toVue3(target);
	results ~= UIMDropdownToggle.toVue3(target);
	results ~= UIMDropdownToggleLink.toVue3(target);

  return results.join(";")~";";
}  */