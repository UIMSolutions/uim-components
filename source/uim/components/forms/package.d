module uim.components.forms;

public import uim.components.forms.controls;
public import uim.components.forms.customcontrols;
public import uim.components.forms.inputgroups;

public import uim.components.forms.check;
public import uim.components.forms.checklabel;
public import uim.components.forms.checkinput;
public import uim.components.forms.text;
public import uim.components.forms.form;
public import uim.components.forms.group;

string formsRegistration() {
  return 
    UIMFormCheck.toVUEComponent.globalRegistration~
    UIMFormCheckInput.toVUEComponent.globalRegistration~
    UIMFormCheckLabel.toVUEComponent.globalRegistration~
    UIMForm.toVUEComponent.globalRegistration~
    UIMFormGroup.toVUEComponent.globalRegistration~
    UIMFormText.toVUEComponent.globalRegistration;
}