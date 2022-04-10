module uim.components.basic.breadcrumbs;

public import uim.components;

@safe:
public import uim.components.basic.breadcrumbs.breadcrumb;
public import uim.components.basic.breadcrumbs.item;
public import uim.components.basic.breadcrumbs.link;

/* string breadcrumbsRegistration() {
  return 
    UIMBreadcrumb.toVUEComponent.globalRegistration~
    UIMBreadcrumbItem.toVUEComponent.globalRegistration~
    UIMBreadcrumbLink.toVUEComponent.globalRegistration;
}

string breadcrumbsVue3(string target) {
  string[] results; 

	results ~= UIMBreadcrumb.toVue3(target);
	results ~= UIMBreadcrumbItem.toVue3(target);
	results ~= UIMBreadcrumbLink.toVue3(target);

  return results.join(";")~";";
}  */