module uim.components.basic.forms;

public import uim.components.basic.forms.controls;
public import uim.components.basic.forms.customcontrols;
public import uim.components.basic.forms.inputgroups;

public import uim.components.basic.forms.check;
public import uim.components.basic.forms.checklabel;
public import uim.components.basic.forms.checkinput;
public import uim.components.basic.forms.text;
public import uim.components.basic.forms.form;
public import uim.components.basic.forms.group;

string formsRegistration() {
  return 
    UIMFormCheckbox.toVUEComponent.globalRegistration~
    UIMFormCheckInput.toVUEComponent.globalRegistration~
    UIMFormCheckLabel.toVUEComponent.globalRegistration~
    UIMForm.toVUEComponent.globalRegistration~
    UIMFormGroup.toVUEComponent.globalRegistration~
    UIMFormText.toVUEComponent.globalRegistration;
}