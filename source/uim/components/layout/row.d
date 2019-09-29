module uim.components.layout.row;

import uim.components;

class DUIMRow : DUIMComponent {
	mixin(H5This!("uim-row"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Row("<slot />");
		return super.toVueComponent		
		.name("UimRow")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Row");

unittest {
	assert(UIMRow == `<uim-row></uim-row>`);
}