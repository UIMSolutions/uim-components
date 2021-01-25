module uim.components.basic.breadcrumbs;

public import uim.components.basic.breadcrumbs.breadcrumb;
public import uim.components.basic.breadcrumbs.item;
public import uim.components.basic.breadcrumbs.link;

string breadcrumbsRegistration() {
  return 
    UIMBreadcrumb.toVUEComponent.globalRegistration~
    UIMBreadcrumbItem.toVUEComponent.globalRegistration~
    UIMBreadcrumbLink.toVUEComponent.globalRegistration;
}