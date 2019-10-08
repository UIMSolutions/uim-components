module uim.components.forms.customcontrols.radio;

import uim.components;

class DUIMCustomRadio : DUIMComponent {
	mixin(H5This!("uim-custom-radio"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CustomRadio();
		return super.toVUEComponent		
		.name("UimCustomRadio")
		;
	}
}
mixin(UIMShort!"CustomRadio");

unittest {
	assert(Assert(UIMCustomRadio, "<uim-custom-radio></uim-custom-radio>"));	
}