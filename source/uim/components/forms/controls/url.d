module uim.components.forms.controls.url;

import uim.components; 

class DUIMInputUrl : DUIMComponent {
	mixin(H5This!("uim-input-url"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputUrl();
		return super.toVueComponent		
		.name("UimInputUrl")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputUrl"));

unittest {
	// assert(UIMInputUrl == "<uim-input-url></uim-input-url>");	
}