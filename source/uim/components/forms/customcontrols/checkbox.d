module uim.components.forms.customcontrols.checkbox;

import uim.components;

class DUIMCustomCheckbox : DUIMComponent {
	mixin(H5This!("uim-custom-checkbox"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CustomCheckbox();
		return super.toVUEComponent		
		.name("UimCustomCheckbox")
		;
	}
}
mixin(UIMShort!"CustomCheckbox");

unittest {
	assert(Assert(UIMCustomCheckbox, "<uim-custom-checkbox></uim-custom-checkbox>"));	
}