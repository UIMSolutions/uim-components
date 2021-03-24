module uim.components.basic.paginations;

public import uim.components;

@safe:

public import uim.components.basic.paginations.item;
public import uim.components.basic.paginations.link;
public import uim.components.basic.paginations.pagination;

string paginationsRegistration() {
  return 
    UIMPagination.toVUEComponent.globalRegistration~
    UIMPageItem.toVUEComponent.globalRegistration~
    UIMPageLink.toVUEComponent.globalRegistration;
}

string paginationsVue3(string target) {
  string[] results; 

	results ~= UIMPagination.toVue3(target);
	results ~= UIMNavItem.toVue3(target);
	results ~= UIMPageLink.toVue3(target);

  return results.join(";")~";";
} 