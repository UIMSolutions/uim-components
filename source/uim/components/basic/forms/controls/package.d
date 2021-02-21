module uim.components.basic.forms.controls;

public import uim.components;

public import uim.components.basic.forms.controls.button;
public import uim.components.basic.forms.controls.color;
public import uim.components.basic.forms.controls.checkbox;
public import uim.components.basic.forms.controls.date;
public import uim.components.basic.forms.controls.datetime;
public import uim.components.basic.forms.controls.email;
public import uim.components.basic.forms.controls.file;
public import uim.components.basic.forms.controls.input;
public import uim.components.basic.forms.controls.hidden;
public import uim.components.basic.forms.controls.image;
public import uim.components.basic.forms.controls.month;
public import uim.components.basic.forms.controls.number;
public import uim.components.basic.forms.controls.password;
public import uim.components.basic.forms.controls.radio;
public import uim.components.basic.forms.controls.range;
public import uim.components.basic.forms.controls.reset;
public import uim.components.basic.forms.controls.search;
public import uim.components.basic.forms.controls.select;
public import uim.components.basic.forms.controls.submit;
public import uim.components.basic.forms.controls.tel;
public import uim.components.basic.forms.controls.text;
public import uim.components.basic.forms.controls.textarea;
public import uim.components.basic.forms.controls.time;
public import uim.components.basic.forms.controls.url;
public import uim.components.basic.forms.controls.week;

string formsControlsVue3(string target) {
  string[] results; 

	results ~= UIMInputButton.toVue3(target);
	results ~= UIMCheckbox.toVue3(target);
	results ~= UIMInputColor.toVue3(target);
	results ~= UIMInputDate.toVue3(target);
	results ~= UIMInputDateTime.toVue3(target);
	results ~= UIMInputEmail.toVue3(target);
	results ~= UIMInputFile.toVue3(target);
	results ~= UIMInputHidden.toVue3(target);
	results ~= UIMInputImage.toVue3(target);
	results ~= UIMInput.toVue3(target);
	results ~= UIMInputMonth.toVue3(target);
	results ~= UIMInputNumber.toVue3(target);
	results ~= UIMPassword.toVue3(target);
	results ~= UIMRadio.toVue3(target);
	results ~= UIMInputRange.toVue3(target);
	results ~= UIMInputReset.toVue3(target);
	results ~= UIMInputSearch.toVue3(target);
	results ~= UIMInputSelect.toVue3(target);
	results ~= UIMInputSubmit.toVue3(target);
	results ~= UIMInputTel.toVue3(target);
	results ~= UIMInputText.toVue3(target);
	results ~= UIMInputTextarea.toVue3(target);
	results ~= UIMInputTime.toVue3(target);
	results ~= UIMInputUrl.toVue3(target);
	results ~= UIMInputWeek.toVue3(target);

  return results.join(";")~";";
} 