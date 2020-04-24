module uim.components.lists;

public import uim.components.lists.button;
public import uim.components.lists.inline;
public import uim.components.lists.inlineitem;
public import uim.components.lists.list;
public import uim.components.lists.links;
public import uim.components.lists.item;
public import uim.components.lists.link;

string listsRegistration() {
  return 
  UIMListButton.toVUEComponent.globalRegistration~
  UIMList.toVUEComponent.globalRegistration~
  UIMListInline.toVUEComponent.globalRegistration~
  UIMListInlineItem.toVUEComponent.globalRegistration~
  UIMListLinks.toVUEComponent.globalRegistration~
  UIMListItem.toVUEComponent.globalRegistration~
  UIMListLink.toVUEComponent.globalRegistration;
}