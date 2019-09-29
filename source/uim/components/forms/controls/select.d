module uim.components.forms.controls.select;

import uim.components; 

class DUIMInputSelect : DUIMComponent {
	mixin(H5This!("uim-input-select"));	

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[string] values, string selectedKey = "") {
		foreach(k; values.keys.sort) {
			if (k == selectedKey) this.option(["value":k, "selected":"selected"], values[k]);
			else this.option(["value":k], values[k]);
		}
		return cast(O)this;	
	}

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputButton("slot");
		return super.toVueComponent		
		.name("UimInputButton")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputSelect"));

unittest {
	// assert(UIMInputSelect == "<uim-input-select></uim-input-select>");	
}