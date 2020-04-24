module uim.components.layout.col;

import uim.components;

class DUIMCol : DUIMComponent {
	mixin(H5This!("uim-col"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Col("<slot />");
		return super.toVUEComponent		
		.name("uim-col");
	}
}
mixin(UIMShort!"Col");

unittest {
	assert(Assert(UIMCol, `<uim-col></uim-col>`));
}