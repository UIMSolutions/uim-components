module uim.components.basic.forms.customcontrols;

public import uim.components;

@safe:

public import uim.components.basic.forms.customcontrols.control;
public import uim.components.basic.forms.customcontrols.checkbox;
public import uim.components.basic.forms.customcontrols.input;
public import uim.components.basic.forms.customcontrols.radio;

string formsCustomVue3(string target) {
  string[] results; 

	results ~= UIMCustomCheckbox.toVue3(target);
	results ~= UIMCustomControl.toVue3(target);
	results ~= UIMCustomInput.toVue3(target);
	results ~= UIMCustomRadio.toVue3(target);

  return results.join(";")~";";
} 