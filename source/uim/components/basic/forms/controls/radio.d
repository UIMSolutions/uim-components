module uim.components.basic.forms.controls.radio;

import uim.components; 

class DUIMRadio : DUIMComponent {
	mixin(H5This!("uim-radio"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Radio();
		return super.toVUEComponent		
		.name("uim-radio")
		;
	}	
}
mixin(UIMShort!("Radio"));

unittest {
	assert(Assert(UIMRadio, "<uim-radio></uim-radio>"));	

	auto f = File("./public/js/uim/components/basic/forms/controls/radio.js", "w");
  f.write(UIMRadio.toVUEComponent.toString);
}