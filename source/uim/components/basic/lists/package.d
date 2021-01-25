module uim.components.basic.lists;

public import uim.components.basic.lists.button;
public import uim.components.basic.lists.inline;
public import uim.components.basic.lists.inlineitem;
public import uim.components.basic.lists.list;
public import uim.components.basic.lists.links;
public import uim.components.basic.lists.item;
public import uim.components.basic.lists.link;

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