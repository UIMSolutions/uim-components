module uim.components.basic.forms;

public import uim.components;

@safe:

public import uim.components.basic.forms.controls;
public import uim.components.basic.forms.customcontrols;
public import uim.components.basic.forms.inputgroups;

public import uim.components.basic.forms.check;
public import uim.components.basic.forms.checklabel;
public import uim.components.basic.forms.checkinput;
public import uim.components.basic.forms.text;
public import uim.components.basic.forms.form;
public import uim.components.basic.forms.group;

/* string formsRegistration() {
  return 
    UIMFormCheckbox.toVUEComponent.globalRegistration~
    UIMFormCheckInput.toVUEComponent.globalRegistration~
    UIMFormCheckLabel.toVUEComponent.globalRegistration~
    UIMForm.toVUEComponent.globalRegistration~
    UIMFormGroup.toVUEComponent.globalRegistration~
    UIMFormText.toVUEComponent.globalRegistration;
}

string formsVue3(string target) {
  string[] results; 

	results ~= formsControlsVue3(target);
	results ~= formsCustomVue3(target);
	results ~= formsInputgroupVue3(target);

	results ~= UIMFormCheckbox.toVue3(target);
	results ~= UIMFormCheckInput.toVue3(target);
	results ~= UIMForm.toVue3(target);
	results ~= UIMFormGroup.toVue3(target);
	results ~= UIMFormText.toVue3(target);

  return results.join(";")~";";
}  */