module uim.components.basic.forms.controls.select;

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

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5InputSelect("<slot />");
		return super.toVUEComponent		
		.name("uim-input-select");
	}
}
mixin(UIMShort!("InputSelect"));

unittest {
	assert(Assert(UIMInputSelect, "<uim-input-select></uim-input-select>"));	
}