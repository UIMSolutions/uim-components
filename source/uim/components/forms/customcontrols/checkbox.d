module uim.components.forms.customcontrols.checkbox;

import uim.components;

class DUIMCustomCheckbox : DUIMComponent {
	mixin(H5This!("uim-custom-checkbox"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CustomCheckbox();
		return super.toVueComponent		
		.name("UimCustomCheckbox")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CustomCheckbox");

unittest {
	// assert(UIMCustomCheckbox == "<uim-custom-checkbox></uim-custom-checkbox>");	
}