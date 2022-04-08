module uim.components.basic.forms.customcontrols.checkbox;

import uim.components;

@safe:

class DUIMCustomCheckbox : DUIMComponent {
	mixin(H5This!("uim-custom-checkbox"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CustomCheckbox();
		return super.toVUEComponent		
		.name("uim-custom-checkbox")
		;
	} */
}
mixin(UIMShort!"CustomCheckbox");

unittest {
	assert(Assert(UIMCustomCheckbox, "<uim-custom-checkbox></uim-custom-checkbox>"));	
}