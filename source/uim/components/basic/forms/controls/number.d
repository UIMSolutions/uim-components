module uim.components.basic.forms.controls.number;

import uim.components; 

class DUIMInputNumber : DUIMComponent {
	mixin(H5This!("uim-input-number"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputButton();
		return super.toVUEComponent		
		.name("uim-input-number")
		;
	}
}
mixin(UIMShort!("InputNumber"));

unittest {
	assert(Assert(UIMInputNumber, "<uim-input-number></uim-input-number>"));		

	auto f = File("./public/js/uim/components/basic/forms/controls/number.js", "w");
  f.write(UIMInputNumber.toVUEComponent.toString);
}