module uim.components.basic.forms.inputgroups;

public import uim.components;

public import uim.components.basic.forms.inputgroups.append;
public import uim.components.basic.forms.inputgroups.group;
public import uim.components.basic.forms.inputgroups.text;
public import uim.components.basic.forms.inputgroups.prepend;

string formsInputgroupVue3(string target) {
  string[] results; 

	results ~= UIMInputGroupAppend.toVue3(target);
	results ~= UIMInputGroup.toVue3(target);
	results ~= UIMInputGroupPrepend.toVue3(target);
	results ~= UIMInputGroupText.toVue3(target);

  return results.join(";")~";";
} 