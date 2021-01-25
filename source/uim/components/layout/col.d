module uim.components.layout.col;

import uim.components;

class DUIMCol : DUIMComponent {
	mixin(H5This!("uim-col"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Col("<slot />");
		return super.toVUEComponent		
		.name("uim-col");
	}
}
mixin(UIMShort!"Col");

unittest {
	assert(UIMCol == `<uim-col></uim-col>`);
	assert(Assert(UIMCol, `<uim-col></uim-col>`));
}