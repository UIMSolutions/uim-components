module uim.components.forms.controls.button;

import uim.components; 

class DUIMInputButton : DUIMComponent {
	mixin(H5This!("uim-input-button"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputButton();
		return super.toVueComponent		
		.name("UimInputButton")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputButton"));

unittest {
	// assert(UIMInputButton == "<uim-input-button></uim-input-button>");
}