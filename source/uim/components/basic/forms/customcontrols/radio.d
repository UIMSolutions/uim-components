module uim.components.basic.forms.customcontrols.radio;

import uim.components;

@safe:

class DUIMCustomRadio : DUIMComponent {
	mixin(H5This!("uim-custom-radio"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CustomRadio();
		return super.toVUEComponent		
		.name("uim-custom-radio")
		;
	}
}
mixin(UIMShort!"CustomRadio");

unittest {
	assert(Assert(UIMCustomRadio, "<uim-custom-radio></uim-custom-radio>"));	
}