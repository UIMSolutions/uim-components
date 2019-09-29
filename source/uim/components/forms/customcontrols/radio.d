module uim.components.forms.customcontrols.radio;

import uim.components;

class DUIMCustomRadio : DUIMComponent {
	mixin(H5This!("uim-custom-radio"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CustomRadio();
		return super.toVueComponent		
		.name("UimCustomRadio")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CustomRadio");

unittest {
	// assert(UIMCustomRadio == "<uim-custom-radio></uim-custom-radio>");	
}