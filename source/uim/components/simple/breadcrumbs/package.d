module uim.components.breadcrumbs;

public import uim.components.breadcrumbs.breadcrumb;
public import uim.components.breadcrumbs.item;
public import uim.components.breadcrumbs.link;

string breadcrumbsRegistration() {
  return 
    UIMBreadcrumb.toVUEComponent.globalRegistration~
    UIMBreadcrumbItem.toVUEComponent.globalRegistration~
    UIMBreadcrumbLink.toVUEComponent.globalRegistration;
}