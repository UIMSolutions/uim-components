module uim.components.basic.modals;

public import uim.components;

@safe:

public import uim.components.basic.modals.body_;
public import uim.components.basic.modals.button;
public import uim.components.basic.modals.content;
public import uim.components.basic.modals.dialog;
public import uim.components.basic.modals.footer;
public import uim.components.basic.modals.header;
public import uim.components.basic.modals.modal;
public import uim.components.basic.modals.title;

/* string modalsRegistration() {
  return 
    UIMModal.toVUEComponent.globalRegistration~
    UIMModalBody.toVUEComponent.globalRegistration~
    UIMModalButton.toVUEComponent.globalRegistration~
    UIMModalContent.toVUEComponent.globalRegistration~
    UIMModalDialog.toVUEComponent.globalRegistration~
    UIMModalFooter.toVUEComponent.globalRegistration~
    UIMModalHeader.toVUEComponent.globalRegistration;
}

string modalsVue3(string target) {
  string[] results; 

	results ~= UIMModal.toVue3(target);
	results ~= UIMModalBody.toVue3(target);
	results ~= UIMModalButton.toVue3(target);
	results ~= UIMModalContent.toVue3(target);
	results ~= UIMModalDialog.toVue3(target);
	results ~= UIMModalFooter.toVue3(target);
	results ~= UIMModalHeader.toVue3(target);

  return results.join(";")~";";
}  */