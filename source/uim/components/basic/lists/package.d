module uim.components.basic.lists;

public import uim.components;

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

string listsVue3(string target) {
  string[] results; 

	results ~= UIMListButton.toVue3(target);
	results ~= UIMList.toVue3(target);
	results ~= UIMListInline.toVue3(target);
	results ~= UIMListInlineItem.toVue3(target);
	results ~= UIMListLinks.toVue3(target);
	results ~= UIMListItem.toVue3(target);
	results ~= UIMListLink.toVue3(target);

  return results.join(";")~";";
} 