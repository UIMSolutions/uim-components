module uim.components.forms.controls.tel;

import uim.components; 

class DUIMInputTel : DUIMComponent {
	mixin(H5This!("uim-input-tel"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputTel();
		return super.toVUEComponent		
		.name("uim-input-tel");
	}	
}
mixin(UIMShort!("InputTel"));

unittest {
	assert(Assert(UIMInputTel, "<uim-input-tel></uim-input-tel>"));	
}