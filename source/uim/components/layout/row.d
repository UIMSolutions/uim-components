module uim.components.layout.row;

@safe:

import uim.components;

class DUIMRow : DUIMComponent {
	mixin(H5This!("uim-row"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Row("<slot />");
		return super.toVUEComponent		
		.name("uim-row");
	} */
}
mixin(UIMShort!"Row");

unittest {
	assert(Assert(UIMRow, `<uim-row></uim-row>`));
}