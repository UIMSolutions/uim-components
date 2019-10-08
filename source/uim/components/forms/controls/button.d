module uim.components.forms.controls.button;

import uim.components; 

class DUIMInputButton : DUIMComponent {
	mixin(H5This!("uim-input-button"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputButton();
		return super.toVUEComponent		
		.name("UimInputButton");
	}
}
mixin(UIMShort!("InputButton"));

unittest {
	assert(Assert(UIMInputButton, "<uim-input-button></uim-input-button>"));
}