module uim.components.forms.controls.text;

import uim.components; 

class DUIMInputText : DUIMComponent {
	mixin(H5This!("uim-input-text"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputText();
		return super.toVUEComponent		
		.name("UimInputText");
	}
}
mixin(UIMShort!("InputText"));

unittest {
	assert(Assert(UIMInputText, "<uim-input-text></uim-input-text>"));	
}