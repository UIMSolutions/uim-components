module uim.components.forms.controls.url;

import uim.components; 

class DUIMInputUrl : DUIMComponent {
	mixin(H5This!("uim-input-url"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputUrl();
		return super.toVUEComponent		
		.name("uim-input-url");
	}
}
mixin(UIMShort!("InputUrl"));

unittest {
	assert(Assert(UIMInputUrl, "<uim-input-url></uim-input-url>"));	
}