module uim.components.tables.header;

import uim.components;

class DUIMTableHeader : DUIMComponent {
	mixin(H5This!("uim-table-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-TableHeader")
		;
	}
}
mixin(UIMShort!"TableHeader");

unittest {
	assert(Assert(UIMTableHeader, `<uim-table-header></uim-table-header>`));
}