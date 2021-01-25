module uim.components.basic.paginations;

public import uim.components.basic.paginations.item;
public import uim.components.basic.paginations.link;
public import uim.components.basic.paginations.pagination;

string paginationsRegistration() {
  return 
    UIMPagination.toVUEComponent.globalRegistration~
    UIMPageItem.toVUEComponent.globalRegistration~
    UIMPageItem.toVUEComponent.globalRegistration;
}