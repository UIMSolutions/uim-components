module uim.components.basic.forms.group;

import uim.components;

class DUIMFormGroup : DUIMComponent {
	mixin(H5This!("uim-form-group"));

	mixin(MyAttribute!("readOnly", "readonly"));
	mixin(MyAttribute!("value", "value"));
	mixin(MyAttribute!("placeHolder", "placeholder"));

	mixin(MyContent!("label", "H5LABEL"));
	O label(this O)(string forId, string title, string[] someClasses = null, string[string] someAttributes = null) {
		someAttributes["for"] = forId;
		this.content(H5LABEL(someClasses, someAttributes, title));
		return cast(O)this;
	}
	mixin(MyContent!("col", "UIMCol"));
	mixin(MyContent!("input", "UIMInput"));
	mixin(MyContent!("inputButton", "UIMInputButton"));
	mixin(MyContent!("inputCheckbox", "UIMInputCheckbox"));
	mixin(MyContent!("inputColor", "UIMInputColor"));
	mixin(MyContent!("inputDate", "UIMInputDate"));
	mixin(MyContent!("inputDateTime", "UIMInputDateTime"));
	mixin(MyContent!("inputEmail", "UIMInputEmail"));
	mixin(MyContent!("inputFile", "UIMInputFile"));
	mixin(MyContent!("inputHidden", "UIMInputHidden"));
	mixin(MyContent!("inputImage", "UIMInputImage"));
	mixin(MyContent!("inputMonth", "UIMInputMonth"));
	mixin(MyContent!("inputNumber", "UIMInputNumber"));
	mixin(MyContent!("inputPassword", "UIMInputPassword"));
	mixin(MyContent!("inputRadio", "UIMInputRadio"));
	mixin(MyContent!("inputRange", "UIMInputRange"));
	mixin(MyContent!("inputReset", "UIMInputReset"));
	mixin(MyContent!("inputSearch", "UIMInputSearch"));
	mixin(MyContent!("inputSelect", "UIMInputSelect"));
	mixin(MyContent!("inputSubmit", "UIMInputSubmit"));
	mixin(MyContent!("inputTelephone", "UIMInputTelephone"));
	mixin(MyContent!("inputText", "UIMInputText"));
	mixin(MyContent!("inputTextArea", "UIMInputTextArea"));
	mixin(MyContent!("inputTime", "UIMInputTime"));
	mixin(MyContent!("inputUrl", "UIMInputUrl"));
	mixin(MyContent!("inputWeek", "UIMInputWeek"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5FormGroup("<slot />");
		return super.toVUEComponent		
		.name("uim-form-group")
		;
	}
}
mixin(UIMShort!"FormGroup");

unittest {
	assert(Assert(UIMFormGroup, `<uim-form-group></uim-form-group>`));
}
