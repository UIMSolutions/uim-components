module uim.components.modals;

public import uim.components.modals.body_;
public import uim.components.modals.button;
public import uim.components.modals.content;
public import uim.components.modals.dialog;
public import uim.components.modals.footer;
public import uim.components.modals.header;
public import uim.components.modals.modal;

string modalsRegistration() {
  return 
    UIMModal.toVUEComponent.globalRegistration~
    UIMModalBody.toVUEComponent.globalRegistration~
    UIMModalButton.toVUEComponent.globalRegistration~
    UIMModalContent.toVUEComponent.globalRegistration~
    UIMModalDialog.toVUEComponent.globalRegistration~
    UIMModalFooter.toVUEComponent.globalRegistration~
    UIMModalHeader.toVUEComponent.globalRegistration;
}